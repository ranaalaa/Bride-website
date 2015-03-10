class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.text :contact

      t.timestamps
    end
  end
end
