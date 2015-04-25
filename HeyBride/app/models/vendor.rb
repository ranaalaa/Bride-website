class Vendor < ActiveRecord::Base
	has_many :packages
	has_many :samples
	has_many :comments
	has_many :brands
	has_many :ratings
	  	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  
 # Author:
 # Rana Alaa' 
 # Description:
 # this action displays the average rating for each vendor page for the users 
 # Params:
 # average_rating: where it's an attribute to save the average_rating in it 
 # count: is the attribute to save the no. of rating done by the user in order to calculate the average_rating
 #rating.score: is the rating attribute where the score the user puts it to create the rating
 # Success:
 # The user gets the average rating of the vendor desplayed and the answer is rounded up 
 # Failure:
 # The user couldn't view the average rating of the page desplayed
 def avg_rating
  average_rating = 0.0
  count = 0
  ratings.each do |rating| 
    average_rating += rating.score.round(1)
    count += 1
  end
    if count != 0
     (average_rating / count).round(1)
   else
     count
   end
 end

 def self.per_page
    5
  end
end

