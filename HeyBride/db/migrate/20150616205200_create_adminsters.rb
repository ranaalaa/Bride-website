class CreateAdminsters < ActiveRecord::Migration
  def change
    create_table :adminsters do |t|
      t.string :email
      t.references :vendor, index: true

      t.timestamps null: false
    end
    add_foreign_key :adminsters, :vendors
  end
end
