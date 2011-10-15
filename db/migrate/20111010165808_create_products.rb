class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :original_price
      t.decimal :current_price
      t.string :image_name
      t.text :description
      t.datetime :end_time
      t.boolean :sold

      t.timestamps
    end
  end
end
