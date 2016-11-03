class UsertracksController < ApplicationController
  
  def create
    @user_id = current_user.id
    @track_id = params[:track_id]
    UserTrack.create({user_id: @user_id, track_id: @track_id})
  end

  def delete
  end
end
