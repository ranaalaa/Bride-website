class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :address
      t.text :mobile
      t.text :telephone
      t.text :email
      t.text :social

      t.timestamps
    end
  end
end
