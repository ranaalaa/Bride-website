class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
  
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :samples, :vendors
  end
end
