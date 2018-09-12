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

ActiveRecord::Schema.define(version: 2018_09_11_215607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.text "description"
    t.string "stadium"
  end

  create_table "compclubs", force: :cascade do |t|
    t.bigint "club_id"
    t.bigint "competition_id"
    t.integer "beginseason"
    t.integer "endseason"
    t.index ["club_id"], name: "index_compclubs_on_club_id"
    t.index ["competition_id"], name: "index_compclubs_on_competition_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "position"
    t.string "foot"
    t.string "country"
    t.bigint "club_id"
    t.index ["club_id"], name: "index_players_on_club_id"
  end

  create_table "rencontres", force: :cascade do |t|
    t.integer "home"
    t.integer "away"
    t.string "date"
    t.string "hour"
    t.string "score"
    t.bigint "match_id"
    t.bigint "competition_id"
    t.index ["competition_id"], name: "index_rencontres_on_competition_id"
    t.index ["match_id"], name: "index_rencontres_on_match_id"
  end

  add_foreign_key "compclubs", "clubs"
  add_foreign_key "compclubs", "competitions"
  add_foreign_key "players", "clubs"
  add_foreign_key "rencontres", "competitions"
  add_foreign_key "rencontres", "matches"
end
