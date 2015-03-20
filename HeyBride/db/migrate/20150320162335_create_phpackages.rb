class CreatePhpackages < ActiveRecord::Migration
  def change
    create_table :phpackages do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :photographer, index: true

      t.timestamps null: false
    end
    add_foreign_key :phpackages, :photographers
  end
end
