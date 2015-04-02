class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :bName
      t.string :designer
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :brands, :vendors
  end
end
