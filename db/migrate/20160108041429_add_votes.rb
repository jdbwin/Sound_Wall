class AddVotes < ActiveRecord::Migration

  def change
    create_table :votes do |t|
      t.references :track
      t.references :user
      t.integer :number_of_votes
    end
  end

end
