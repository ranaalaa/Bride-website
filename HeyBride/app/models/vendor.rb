class Vendor < ActiveRecord::Base
	has_many :packages,:after_add => :update_average_price, :after_remove => :update_average_price
	has_many :samples
	has_many :comments
	has_many :brands
	has_many :ratings
	  	has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
      
 # Author:
 # Donia Magdy 
 # Description:
 # This action calculates the average price of the vendor's packages in order to sort by them.
 # Params:
 # avgprice: where it's an attribute to save the average price  in it 
 # count: is the attribute to save the no. of price of the package in order to calculate the average_price
 # price: is the price of the package of each vendor
 # Success:
 # The average price is calculated correctly and sorting is done according to the average price of the packages
 # Failure:
 # The average price is not calculated correctly and the user will not be able to sort the vendors according to the average price of their packages
      
  
  def update_average_price(vendor=nil)
    s = self.packages.sum(:price)
    c = self.packages.count
    self.update_attribute(:avgprice, c == 0 ? 0.0 : s / c.to_f)
end
  # Author:
  # Hanan Hosny 
  # Description:
  # it returns the vendors whose names contain one or more words that form the query
  # Params:
  # name 
  # Success:
  # it returns the list of vendors that matches the query 
  # Failure:
  # it returns empty list
  def self.search(query)
    where("name like ?", "%#{query}%") 
  end
  
 # Author:
 # Donia Magdy
 # Description:
 # this action displays the default number of items to view per vendor's page
 # Params:
 # per_page: is the default number of items per page
 # Success:
 # The user will view only 5 items per vendor's page
 # Failure:
 # All the items of the vendor will be viewed in one page not 5
 def self.per_page
    5
  end
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
 # Author:
 # Rana Alaa' 
 # Description:
 # this action allows the user to rate only one time per vendor page 
 # Params:
 # email: it's an argument for the method which takes the email of the current user 
 # can_rate: where it's a boolean to know if this user has done rating before or not
 # Success:
 # The user will rate only one time for every vendor page
 # Failure:
 # The user will be allowed to put ratings many times for the same vendor   
  def rate (email)
    can_rate = true
    ratings.each do |rating|
      if rating.rater = email 
        can_rate = false
      end
    end
      return can_rate
   end 
 end 

