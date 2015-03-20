class AddAttachmentSamplesToSuitSamples < ActiveRecord::Migration
  def self.up
    change_table :suit_samples do |t|
      t.attachment :samples
    end
  end

  def self.down
    remove_attachment :suit_samples, :samples
  end
end
