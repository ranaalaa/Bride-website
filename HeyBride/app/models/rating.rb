class Rating < ActiveRecord::Base
  SCORES = [1, 2, 3, 4, 5]
  belongs_to :vendor
  belongs_to :user
  
def rate 
     can_rate = true
     ratings.each do |rating|
         if  rating.user_id = user.user_id 
             can_rate = false
         end
     end
  end 
end
