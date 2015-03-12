class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :info
      t.references :hairdresser, index: true

      t.timestamps null: false
    end
    add_foreign_key :samples, :hairdressers
  end
end
