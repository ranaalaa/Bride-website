class RemoveColumns < ActiveRecord::Migration
  def change
    def self.up
  remove_column :suit_samples, :image
end
  end
end
