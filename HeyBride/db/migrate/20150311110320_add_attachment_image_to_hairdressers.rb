class AddAttachmentImageToHairdressers < ActiveRecord::Migration
  def self.up
    change_table :hairdressers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hairdressers, :image
  end
end
