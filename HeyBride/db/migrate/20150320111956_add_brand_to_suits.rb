class AddBrandToSuits < ActiveRecord::Migration
  def change
    add_column :suits, :brand, :text
  end
end
