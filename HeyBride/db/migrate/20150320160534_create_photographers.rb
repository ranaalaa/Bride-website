class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :address
      t.string :mobile

      t.timestamps null: false
    end
  end
end
