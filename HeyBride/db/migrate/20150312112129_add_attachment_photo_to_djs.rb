class AddAttachmentPhotoToDjs < ActiveRecord::Migration
  def self.up
    add_column :djs, :photo_file_name, :string
    add_column :djs, :photo_content_type, :string
    add_column :djs, :photo_file_size, :integer 
    add_column :djs, :photo_updated_at, :datetime
    end
 

  def self.down
    
    remove_column :djs, :photo_file_name
    remove_column :djs, :photo_content_type
    remove_column :djs, :photo_file_size
    remove_column :djs, :photo_updated_at
  end
end
