class AddRaterToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :rater, :string
  end
end
