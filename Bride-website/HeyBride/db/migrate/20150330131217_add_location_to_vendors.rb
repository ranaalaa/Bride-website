class AddLocationToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :location, :string
  end
end
