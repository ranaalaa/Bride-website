class AddAttachmentImageToPhsamples < ActiveRecord::Migration
  def self.up
    change_table :phsamples do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :phsamples, :image
  end
end
