class CreateDjpackages < ActiveRecord::Migration
  def change
    create_table :djpackages do |t|
      t.string :name
      t.text :description
      t.string :price
      t.references :dj, index: true

      t.timestamps null: false
    end
    add_foreign_key :djpackages, :djs
  end
end
