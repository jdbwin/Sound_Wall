class AddTracks < ActiveRecord::Migration

  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.references :user
      t.timestamps null: false
    end
  end

end
