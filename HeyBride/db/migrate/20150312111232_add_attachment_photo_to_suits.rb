class AddAttachmentPhotoToSuits < ActiveRecord::Migration
  def self.up
    change_table :suits do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :suits, :photo
  end
end
