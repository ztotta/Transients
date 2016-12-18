# Controller actions for Tracks:

class TracksController < ApplicationController
    before_action :authorize_destroy, only: [:destroy]
    before_action :authorize, only: [:index]
    
    def index
        session[:return_to] = request.referer
        
        @track = Track.last
        
        # If we're indexing a specific user, show only that user's tracks:
        if params[:user_id]
            @tracks = Track.where(:user_id => params[:user_id])
            @user = User.find(params[:user_id])
        
        # If we're indexing a specific category, show only that category's tracks:
        elsif params[:category]
            
            # If the user clicked 'random', display only one random track from the db:
            if params[:category] == "random"
                @tracks = Track.limit(1).order("RANDOM()")
                @category = ""
            
            # Otherwise, show the entire category
            else
                @tracks = Track.where(:category => params[:category])
                @category = Track.where(:category => params[:category])
            end
        else
            @tracks = Track.all
        end
    end
    
    def create
        @user = User.find(params[:user_id])
        @track = @user.tracks.create(track_params)
        if @track.save
          flash[:notice] = "You have uploaded a new track!"

          if params[:redirect]
            redirect_to params[:redirect]
          else
            redirect_to track_path(@track)
          end
        else
          render :"users/show"
        end
    end
    
    def destroy
        @track.destroy
        redirect_to user_path(current_user)
    end
    
    def show
        @track = Track.find(params[:id])
        
        # If a user tries to cheat the URL to get back to a previous track:
        if current_user.played_tracks.include? @track
            redirect_to session.delete(:return_to), alert: "Nice try, partner!" 
        
        # If we're indexing a specific user's tracks:
        else
            if params[:user_id]
                @tracks = Track.where(:user_id => params[:user_id])
                @user = User.find(params[:user_id])
            
            #If we're indexing a specific category:
            elsif params[:category]
                
                # Unless random is chosen, in which case we'll display only one random track:
                if params[:category] == "random"
                    @tracks = Track.limit(1).order("RANDOM()")
                    @category = ""
                else
                    @tracks = Track.where(:category => params[:category])
                    @category = Track.where(:category => params[:category])
                end
            else
                @tracks = Track.all
            end
            
            UserTrack.create({user_id: current_user.id, track_id: @track.id})
        end        
    end
    
    private 
        def track_params
            params.require(:track).permit(:title, :category, :length, :track_url, :plays, :audio, :length_select)
        end
    
        def authorize
            if !logged_in?
                redirect_to new_user_path
            end
        end
    
        def authorize_destroy
          @track = Track.find(params[:id])
          redirect_to root_path if @track.user != current_user
        end
end
