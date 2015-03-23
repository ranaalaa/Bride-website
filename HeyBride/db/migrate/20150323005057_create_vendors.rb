class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :entry
      t.string :name
      t.string :email
      t.string :address
      t.string :mobile
      t.string :telephone

      t.timestamps null: false
    end
  end
end
