class TracksController < ApplicationController
    before_action :authorize_destroy, only: [:destroy]
    
    def index
        if params[:user_id]
            @tracks = Track.where(:user_id => params[:user_id])
            @user = User.find(params[:user_id])
        elsif params[:category]
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
            
#        @tracks = Track.all
#        if params[:user_id]
#          @user    = User.find(params[:user_id])
#          redirect_to user_path(@user) if @user == current_user #redirect to user's profile
#          @tracks = Track.search(params[:search]).where(username: @user)
#        else
#          @tracks = Track.search params[:search]
#        end
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
        # need to create @instances like in index so that the show page
        # can replicate the other pages in the site 
        # (rubthelamp, categories, other's profile, current_user's profile)
        @track = Track.find(params[:id])
        if current_user.played_tracks.includes? @track
            redirect_to user_tracks, alert: "Nice try, partner" 
        else
            UserTrack.create({user_id: current_user.id, track_id: @track.id})
        end        
    end
    
    private 
        def track_params
            params.require(:track).permit(:title, :category, :length, :track_url, :plays)
        end
    
        def authorize_destroy
          @track = Track.find(params[:id])
          redirect_to root_path if @track.user != current_user
        end
end
