class UsertracksController < ApplicationController
  
  def create
    user_id = current_user.id
    track = Track.find(params[:track_id])
    user_track = UserTrack.new({user_id: user_id, track_id: track.id})
    
      
    if user_track.save
        render json: {audio: track.audio.url}
    end
        
  end

  def delete
  end
end
