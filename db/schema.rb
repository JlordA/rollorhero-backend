# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 6) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deli_sandwiches", force: :cascade do |t|
    t.bigint "sandwich_id", null: false
    t.bigint "deli_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deli_id"], name: "index_deli_sandwiches_on_deli_id"
    t.index ["sandwich_id"], name: "index_deli_sandwiches_on_sandwich_id"
  end

  create_table "delis", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "style"
    t.string "hours_open"
    t.string "neighborhood"
    t.string "borough"
    t.integer "lat"
    t.integer "lng"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "sandwich_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sandwich_id"], name: "index_likes_on_sandwich_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.text "body"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "deli_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deli_id"], name: "index_reviews_on_deli_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sandwiches", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.string "style"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "neighborhood"
    t.string "borough"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deli_sandwiches", "delis"
  add_foreign_key "deli_sandwiches", "sandwiches"
  add_foreign_key "likes", "sandwiches"
  add_foreign_key "likes", "users"
  add_foreign_key "reviews", "delis"
  add_foreign_key "reviews", "users"
end