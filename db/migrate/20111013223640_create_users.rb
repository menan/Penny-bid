class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :location
      t.string :gender
      t.date :birthday
      t.integer :bids
      t.boolean :verified
      t.boolean :status
      t.string :user_id

      t.timestamps
    end
  end
end
