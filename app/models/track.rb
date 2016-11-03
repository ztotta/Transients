class Track < ActiveRecord::Base
    belongs_to :user
    
    has_many :user_tracks
    has_many :played_users, :through => :user_tracks,
                                    source: :user
    
    has_attached_file :audio
    validates_attachment_content_type :audio, content_type: /\Aaudio\/.*\Z/
    
    def formatted_time
        created_at.strftime("%b %-d, %Y") 
    end
    
end
