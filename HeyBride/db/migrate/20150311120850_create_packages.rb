class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :price
      t.string :name
      t.references :hairdresser, index: true

      t.timestamps null: false
    end
    add_foreign_key :packages, :hairdressers
  end
end
