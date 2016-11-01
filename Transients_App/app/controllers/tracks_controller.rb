class TracksController < ApplicationController
    
    def index
        if params[:user_id]
            @tracks = Track.where(:user_id => params[:user_id])
            @user = User.find(params[:user_id])
        elsif params[:category]
            @tracks = Track.where(:category => params[:category])
            @category = Track.where(:category => params[:category])
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
    
    private 
        def track_params
            params.require(:track).permit(:title, :category, :length, :track_url, :plays)
        end
    
end
