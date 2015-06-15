class AddNumToUser < ActiveRecord::Migration
  def change
    add_column :users, :num, :integer
  end
end
