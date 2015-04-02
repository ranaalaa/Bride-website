class AddCapacityToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :capacity, :integer
  end
end
