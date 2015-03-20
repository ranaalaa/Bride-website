class AddAttachmentImageToMsamples < ActiveRecord::Migration
  def self.up
    change_table :msamples do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :msamples, :image
  end
end
