class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :user
      t.references :product

      t.timestamps
    end
    add_index :bids, :user_id
    add_index :bids, :product_id
  end
end
