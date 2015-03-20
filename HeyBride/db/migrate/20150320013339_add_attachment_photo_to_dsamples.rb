class AddAttachmentPhotoToDsamples < ActiveRecord::Migration
  def self.up
    change_table :dsamples do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :dsamples, :photo
  end
end
