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

ActiveRecord::Schema.define(version: 2020_09_10_100312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "television_show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["television_show_id"], name: "index_favorites_on_television_show_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.string "show_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "television_shows", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.bigint "channel_id", null: false
    t.integer "time_from"
    t.integer "time_to"
    t.datetime "airs_on"
    t.string "repeats_on"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["channel_id"], name: "index_television_shows_on_channel_id"
    t.index ["show_id"], name: "index_television_shows_on_show_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "television_shows"
  add_foreign_key "favorites", "users"
  add_foreign_key "television_shows", "channels"
  add_foreign_key "television_shows", "shows"
end
