class RenameBidsToBidsLeft < ActiveRecord::Migration
  def up
  	rename_column :users, :bids, :bids_left
  
  end

  def down
  end
end
