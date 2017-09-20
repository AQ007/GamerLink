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

ActiveRecord::Schema.define(version: 20170919221545) do

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string "game_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_tournaments_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
<<<<<<< HEAD
=======
    t.string "avatar"
>>>>>>> 0e51507d12da771aae3f9aa4e8a6bd031ce01860
  end

  create_table "users_tournaments", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tournament_id"
    t.index ["tournament_id"], name: "index_users_tournaments_on_tournament_id"
    t.index ["user_id"], name: "index_users_tournaments_on_user_id"
  end

end
