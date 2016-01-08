class AddUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps null: false
    end

  end
end
