class CreateHairdressers < ActiveRecord::Migration
  def change
    create_table :hairdressers do |t|
      t.string :name
      t.string :mobile
      t.string :telephone
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
