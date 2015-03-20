class Dress < ActiveRecord::Base
    has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ 
  
  has_many :dsamples
end
