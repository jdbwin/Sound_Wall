class AddVotes < ActiveRecord::Migration

  def change
    create_table :votes do |t|
      t.references :track
      t.references :user
      t.timestamps null: false
    end
  end

end
