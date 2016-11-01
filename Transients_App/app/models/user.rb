class User < ActiveRecord::Base
    has_many :tracks, dependent: :destroy
    
    has_many :user_tracks
    has_many :tracks, :through => :user_tracks
    
    has_secure_password
    validates :email, :username, presence: true, uniqueness: true
#    validates :about, length
    
end
