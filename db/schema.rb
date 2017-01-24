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

ActiveRecord::Schema.define(version: 20170122112950) do

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "shared_request_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "item_images", force: :cascade do |t|
    t.integer  "item_id"
    t.text     "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_images_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "picture"
    t.integer  "user_id"
  end

  create_table "matchings", force: :cascade do |t|
    t.integer  "holder_id"
    t.integer  "reqyest_user_id"
    t.integer  "item_id"
    t.text     "comment"
    t.boolean  "accept"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "mypages", force: :cascade do |t|
    t.string   "name"
    t.string   "message"
    t.string   "text"
    t.string   "icon"
    t.string   "string"
    t.string   "address1"
    t.string   "address2"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "holder_id"
    t.integer  "request_user_id"
    t.integer  "item_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.text     "comment"
    t.boolean  "accept",          default: false, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "shared_requests", force: :cascade do |t|
    t.string   "title"
    t.string   "comment"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shareditems", force: :cascade do |t|
    t.string   "picture"
    t.string   "name"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shered_requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thumbnails", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "uid"
    t.string   "provider"
    t.string   "username"
    t.string   "useraddress1"
    t.string   "useraddress2"
    t.text     "usermessage"
    t.string   "usericon"
    t.string   "string"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
