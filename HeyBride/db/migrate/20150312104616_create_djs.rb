class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :Name
      t.text :Address
      t.string :Phone
      t.string :Email

      t.timestamps
    end
  end
end
