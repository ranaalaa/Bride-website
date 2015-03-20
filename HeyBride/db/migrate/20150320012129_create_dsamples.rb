class CreateDsamples < ActiveRecord::Migration
  def change
    create_table :dsamples do |t|
      t.references :dress, index: true

      t.timestamps
    end
  end
end
