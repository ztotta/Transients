class Track < ActiveRecord::Base
    belongs_to :user
    
    def formatted_time
        created_at.strftime("%b %-d, %Y") 
    end
    
end
