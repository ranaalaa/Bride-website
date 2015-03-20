class CreateMakeups < ActiveRecord::Migration
  def change
    create_table :makeups do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :mobile
      t.string :telephone

      t.timestamps null: false
    end
  end
end
