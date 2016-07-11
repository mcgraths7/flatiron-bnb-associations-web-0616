class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :guest_id
      t.integer :reservation_id
      t.integer :listing_id
      t.string :description
      t.integer :rating
      t.timestamps null: false
    end
  end
end
