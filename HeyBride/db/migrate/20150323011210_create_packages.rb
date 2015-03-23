class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :packages, :vendors
  end
end
