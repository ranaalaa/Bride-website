class SuitSample < ActiveRecord::Base
   
  belongs_to :suit
  
   has_attached_file :samples 
  validates_attachment_content_type :samples, content_type: /\Aimage\/.*\Z/ 
  
end
