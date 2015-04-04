class Rating < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :user
  
  def avg_rating
  average_rating = 0.0
  count = 0
  ratings.each do |rating| 
    average_rating += rating.score
    count += 1
  end
                
  if count != 0
    (average_rating / count)
  else
    count
  end
end
end
