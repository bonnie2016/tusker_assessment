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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170105214447) do

  create_table "addresses", force: :cascade do |t|
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city"], name: "index_addresses_on_city", unique: true
  end

  create_table "box_contents", force: :cascade do |t|
    t.string   "code"
    t.integer  "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code", "content_id"], name: "index_box_contents_on_code_and_content_id", unique: true
    t.index ["content_id"], name: "index_box_contents_on_content_id"
  end

  create_table "boxes", force: :cascade do |t|
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_boxes_on_code", unique: true
  end

  create_table "contents", force: :cascade do |t|
    t.string   "item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item"], name: "index_contents_on_item", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "content_id"
    t.integer  "address_id"
    t.boolean  "delivered",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["content_id"], name: "index_orders_on_content_id"
    t.index ["user_id", "content_id"], name: "index_orders_on_user_id_and_content_id", unique: true
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
