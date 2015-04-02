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
end

