class CreateDpackages < ActiveRecord::Migration
  def change
    create_table :dpackages do |t|
      t.string :name
      t.text :description
      t.string :price
      t.references :dj, index: true

      t.timestamps
    end
  end
end
