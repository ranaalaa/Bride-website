class AddStarsToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :stars, :integer
  end
end
