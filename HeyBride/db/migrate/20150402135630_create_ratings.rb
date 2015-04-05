  # Author:
  # Rana Alaa' 
  # Description:
  # rating migration in the database
class CreateRatings < ActiveRecord::Migration
  # Lists each rating to the vendor and user who made the rating 
  # attributes: integer score 
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :vendor, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratings, :vendors
    add_foreign_key :ratings, :users
  end
end
