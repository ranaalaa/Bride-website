class AddCommenterEmailToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commenteremail, :string
  end
end
