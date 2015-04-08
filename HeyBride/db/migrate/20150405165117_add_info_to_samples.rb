class AddInfoToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :info, :text
  end
end
