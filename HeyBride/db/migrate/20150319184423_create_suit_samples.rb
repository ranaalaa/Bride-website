class CreateSuitSamples < ActiveRecord::Migration
  def change
    create_table :suit_samples do |t|
      t.attachment :image
      t.references :suit, index: true

      t.timestamps
    end
  end
end
