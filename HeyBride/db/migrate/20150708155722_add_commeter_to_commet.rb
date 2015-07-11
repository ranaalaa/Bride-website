class AddCommeterToCommet < ActiveRecord::Migration
  def change
    add_column :commets, :commeter, :string
  end
end
