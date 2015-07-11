class AddCommeteremailToCommet < ActiveRecord::Migration
  def change
    add_column :commets, :commeteremail, :string
  end
end
