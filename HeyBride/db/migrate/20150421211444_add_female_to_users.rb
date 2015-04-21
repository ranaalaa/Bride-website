class AddFemaleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :female, :boolean, :default => true
  end
end
