class CreatePackagezs < ActiveRecord::Migration
  def change
    create_table :packagezs do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :post, index: true

      t.timestamps
    end
  end
end
