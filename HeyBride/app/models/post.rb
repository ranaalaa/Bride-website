class Post < ActiveRecord::Base
  
   has_many :commets
  validates_presence_of :body, :title
  
  has_attached_file :photo, styles: { small: "100x100#" }            


 validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

 acts_as_taggable
 def self.search(search)
  if search
    find(:all, :conditions => ['tag.name LIKE ?', "%#{search}%"])
  else
   scoped
  end
end

end
