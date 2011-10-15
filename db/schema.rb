# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111013230154) do

  create_table "bids", :force => true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bids", ["product_id"], :name => "index_bids_on_product_id"
  add_index "bids", ["user_id"], :name => "index_bids_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "original_price"
    t.decimal  "current_price"
    t.string   "image_name"
    t.text     "description"
    t.datetime "end_time"
    t.boolean  "sold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "location"
    t.string   "gender"
    t.date     "birthday"
    t.integer  "bids_left"
    t.boolean  "verified"
    t.boolean  "status"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
