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
    t.integer "Player_id", null: false
    t.integer "Position_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Player_id"], name: "index_player_positions_on_Player_id"
    t.index ["Position_id"], name: "index_player_positions_on_Position_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "full_Name"
    t.integer "rating"
    t.integer "jersey_No"
    t.string "birthday"
    t.string "height"
    t.integer "weight"
    t.float "salary"
    t.integer "Country_id", null: false
    t.integer "Team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Country_id"], name: "index_players_on_Country_id"
    t.index ["Team_id"], name: "index_players_on_Team_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_fans", force: :cascade do |t|
    t.integer "Team_id", null: false
    t.integer "Fan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Fan_id"], name: "index_team_fans_on_Fan_id"
    t.index ["Team_id"], name: "index_team_fans_on_Team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "city"
    t.string "name"
    t.string "abbreviation"
    t.string "general_Manager"
    t.string "head_Coach"
    t.integer "Arena_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Arena_id"], name: "index_teams_on_Arena_id"
  end

  add_foreign_key "player_positions", "Players"
  add_foreign_key "player_positions", "Positions"
  add_foreign_key "players", "Countries"
  add_foreign_key "players", "Teams"
  add_foreign_key "team_fans", "Fans"
  add_foreign_key "team_fans", "Teams"
  add_foreign_key "teams", "Arenas"
end
