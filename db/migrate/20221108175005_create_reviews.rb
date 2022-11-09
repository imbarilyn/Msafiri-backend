class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_ratings
      t.text :comment
      t.integer :destination_id
      t.integer :user_id
      t.timestamps
    end
  end
end
