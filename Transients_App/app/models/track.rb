class Track < ActiveRecord::Base
    belongs_to :user
    
    has_many :user_tracks
    has_many :users, :through => :user_tracks
    
    def formatted_time
        created_at.strftime("%b %-d, %Y") 
    end
    
end
