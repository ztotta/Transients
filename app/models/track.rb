class Track < ActiveRecord::Base
    belongs_to :user
    
    has_many :user_tracks
    has_many :played_users, :through => :user_tracks,
                                    source: :user
    
    has_attached_file :audio,
                    :default_url => "https://ia902606.us.archive.org/35/items/shortpoetry_047_librivox/song_cjrg_teasdale_64kb.mp3"
    
#    validates_attachment_content_type :audio, content_type: /\Aaudio\/.*\Z/
    
    validates_attachment_content_type :audio, :content_type => ['audio/mp3']
    
#    has_attached_file :audio  ,
#                      :url => "/assets/:class/:id/:attachment/:style.:extension",
#                      :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"
    
    
    
    def formatted_time
        created_at.strftime("%b %-d, %Y") 
    end
    
end
