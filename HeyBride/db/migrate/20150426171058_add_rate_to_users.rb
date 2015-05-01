class AddRateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rate, :boolean, :default => false
  end
end
