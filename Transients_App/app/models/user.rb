class User < ActiveRecord::Base
    has_many :tracks, dependent: :destroy
    
    has_secure_password
    validates :email, :username, presence: true, uniqueness: true
end
