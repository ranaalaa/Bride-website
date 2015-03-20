class AddBrandToDresses < ActiveRecord::Migration
  def change
    add_column :dresses, :brand, :text
  end
end
