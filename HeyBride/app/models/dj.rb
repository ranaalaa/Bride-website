class Dj < ActiveRecord::Base
    has_many :dpackages
 has_attached_file :photo, styles: { medium: "700x500#", small: "350x250#" }
 validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end
