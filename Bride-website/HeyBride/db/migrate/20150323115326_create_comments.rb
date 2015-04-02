class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :vendors
  end
end
