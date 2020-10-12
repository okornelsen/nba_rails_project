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

ActiveRecord::Schema.define(version: 2020_10_12_170906) do

  create_table "arenas", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.integer "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fans", force: :cascade do |t|
    t.string "full_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_positions", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "position_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_player_positions_on_player_id"
    t.index ["position_id"], name: "index_player_positions_on_position_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "full_Name"
    t.integer "rating"
    t.integer "jersey_No"
    t.string "birthday"
    t.string "height"
    t.integer "weight"
    t.float "salary"
    t.integer "country_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_players_on_country_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_fans", force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "fan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fan_id"], name: "index_team_fans_on_fan_id"
    t.index ["team_id"], name: "index_team_fans_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "city"
    t.string "name"
    t.string "abbreviation"
    t.string "general_Manager"
    t.string "head_Coach"
    t.integer "arena_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arena_id"], name: "index_teams_on_arena_id"
  end

  add_foreign_key "player_positions", "players"
  add_foreign_key "player_positions", "positions"
  add_foreign_key "players", "countries"
  add_foreign_key "players", "teams"
  add_foreign_key "team_fans", "fans"
  add_foreign_key "team_fans", "teams"
  add_foreign_key "teams", "arenas"
end
