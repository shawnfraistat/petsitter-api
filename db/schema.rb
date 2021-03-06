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

ActiveRecord::Schema.define(version: 2019_01_30_182837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.text "about"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_exchanges_on_client_id"
    t.index ["sitter_id"], name: "index_exchanges_on_sitter_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "sitter_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_favorites_on_client_id"
    t.index ["sitter_id"], name: "index_favorites_on_sitter_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "exchange_id"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "read"
    t.index ["exchange_id"], name: "index_messages_on_exchange_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "sitters", force: :cascade do |t|
    t.text "about"
    t.integer "price"
    t.integer "service_range"
    t.bigint "user_id"
    t.string "animal_types"
    t.string "services_provided"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sitters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zip_code"
    t.string "name"
    t.string "pic_url"
    t.json "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "clients", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "exchanges", "clients"
  add_foreign_key "exchanges", "sitters"
  add_foreign_key "favorites", "clients"
  add_foreign_key "favorites", "sitters"
  add_foreign_key "messages", "exchanges"
  add_foreign_key "messages", "users"
  add_foreign_key "sitters", "users"
end
