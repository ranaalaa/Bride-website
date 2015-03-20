class CreateMsamples < ActiveRecord::Migration
  def change
    create_table :msamples do |t|
      t.string :info
      t.references :makeup, index: true

      t.timestamps null: false
    end
    add_foreign_key :msamples, :makeups
  end
end
