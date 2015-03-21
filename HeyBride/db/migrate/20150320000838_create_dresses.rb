class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.text :address
      t.text :mobile
      t.string :email
    

      t.timestamps
    end
  end
end
