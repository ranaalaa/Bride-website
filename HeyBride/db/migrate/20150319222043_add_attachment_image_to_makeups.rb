class AddAttachmentImageToMakeups < ActiveRecord::Migration
  def self.up
    change_table :makeups do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :makeups, :image
  end
end
