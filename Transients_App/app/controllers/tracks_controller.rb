class TracksController < ApplicationController
    
    def index
        if params[:user_id]
            @tracks = Track.where(:user_id => params[:user_id])
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
    
end
