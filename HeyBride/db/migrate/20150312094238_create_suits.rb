class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name
      t.text :address
      t.text :mobile
      t.string :email
      t.text :brand

      t.timestamps
    end
  end
end
