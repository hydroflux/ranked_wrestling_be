# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_14_232809) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.integer "number_matches"
    t.date "date"
    t.datetime "datetime"
    t.boolean "is_tournament"
    t.integer "league_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_events_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "division"
    t.string "division_abbreviation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "winner"
    t.string "runner_up"
    t.string "result"
    t.string "match_time"
    t.string "winner_point"
    t.string "runner_up_point"
    t.string "summary"
    t.integer "wrestler_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "weight"
    t.integer "event_id", null: false
    t.index ["event_id"], name: "index_matches_on_event_id"
    t.index ["wrestler_id"], name: "index_matches_on_wrestler_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.integer "league_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "wrestlers", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.integer "weight"
    t.integer "win"
    t.integer "loss"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "team_id", null: false
    t.index ["team_id"], name: "index_wrestlers_on_team_id"
  end

  add_foreign_key "events", "leagues"
  add_foreign_key "matches", "events"
  add_foreign_key "matches", "wrestlers"
  add_foreign_key "teams", "leagues"
  add_foreign_key "wrestlers", "teams"
end
