class AddAvgpriceToVendor < ActiveRecord::Migration
  def change
    add_column :vendors, :avgprice, :float
  end
end
