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

ActiveRecord::Schema.define(version: 2020_05_06_102234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reservation_id"
    t.text "content"
    t.integer "rating"
    t.index ["reservation_id"], name: "index_comments_on_reservation_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.string "photo"
  end

  create_table "kids", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "first_name"
    t.string "hair_color"
    t.string "haircut"
    t.string "eyes_color"
    t.boolean "glasses"
    t.string "up_color"
    t.string "bottom_color"
    t.index ["user_id"], name: "index_kids_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "kid_id"
    t.bigint "game_id"
    t.string "status"
    t.integer "green_stars"
    t.integer "yellow_stars"
    t.integer "red_stars"
    t.index ["game_id"], name: "index_reservations_on_game_id"
    t.index ["kid_id"], name: "index_reservations_on_kid_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "first_prize"
    t.string "second_prize"
    t.string "third_prize"
    t.string "fourth_prize"
    t.string "fifth_prize"
    t.string "name"
    t.index ["user_id"], name: "index_rewards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "reservations"
  add_foreign_key "kids", "users"
  add_foreign_key "reservations", "games"
  add_foreign_key "reservations", "kids"
  add_foreign_key "rewards", "users"
end
