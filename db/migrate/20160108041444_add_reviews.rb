class AddReviews < ActiveRecord::Migration
  def change

    create_table :reviews do |t|
      t.string :review
      t.integer :rating
      t.references :user
      t.references :track
      t.timestamps null: false
    end

  end
end
