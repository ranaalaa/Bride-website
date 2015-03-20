class CreateSpasamples < ActiveRecord::Migration
  def change
    create_table :spasamples do |t|
      t.text :info
      t.references :post, index: true

      t.timestamps
    end
     
  end
end
