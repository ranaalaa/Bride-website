class Rating < ActiveRecord::Base
  SCORES = [1, 2, 3, 4, 5]
  belongs_to :vendor
  belongs_to :user
  
end
