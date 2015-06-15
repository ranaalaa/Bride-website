class AddNumToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :num, :integer
  end
end
