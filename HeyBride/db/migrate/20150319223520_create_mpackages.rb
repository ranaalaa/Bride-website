class CreateMpackages < ActiveRecord::Migration
  def change
    create_table :mpackages do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :makeup, index: true

      t.timestamps null: false
    end
    add_foreign_key :mpackages, :makeups
  end
end
