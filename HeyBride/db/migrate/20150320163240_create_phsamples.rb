class CreatePhsamples < ActiveRecord::Migration
  def change
    create_table :phsamples do |t|
      t.string :info
      t.references :photographer, index: true

      t.timestamps null: false
    end
    add_foreign_key :phsamples, :photographers
  end
end
