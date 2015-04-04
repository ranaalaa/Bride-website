class Vendor < ActiveRecord::Base
	has_many :packages
	has_many :samples
	has_many :comments
	has_many :brands
	has_many :ratings
	def self.search(query)
  where("name like ?", "%#{query}%") 
end
	  	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

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
end 
