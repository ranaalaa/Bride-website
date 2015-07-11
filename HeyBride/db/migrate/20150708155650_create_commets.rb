class CreateCommets < ActiveRecord::Migration
  def change
    create_table :commets do |t|
      t.references :post, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :commets, :posts
  end
end
