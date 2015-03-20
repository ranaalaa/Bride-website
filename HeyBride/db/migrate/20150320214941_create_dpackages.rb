class CreateDpackages < ActiveRecord::Migration
  def change
    create_table :dpackages do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps null: false
    end
  end
end
