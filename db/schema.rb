# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140512162704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "identities", force: true do |t|
    t.integer "user_id"
    t.integer "state_id"
    t.integer "name_id"
  end

  create_table "names", force: true do |t|
    t.string "first_name"
    t.string "historical_percent"
    t.string "historical_ratio"
    t.string "historical_rank"
    t.text   "interpretation"
    t.text   "alive_today"
    t.text   "most_common_age"
    t.text   "births_yearly"
    t.string "birth_ratios"
    t.string "birth_precentages"
    t.text   "etymology"
    t.text   "alternative_versions"
    t.text   "notable_people"
  end

  create_table "states", force: true do |t|
    t.string  "name"
    t.string  "abbreviation",           limit: 2
    t.decimal "women_percent_income"
    t.decimal "percent_college_degree"
    t.integer "per_capita_income"
  end

  create_table "users", force: true do |t|
    t.string "username",        null: false
    t.string "email",           null: false
    t.string "password_digest"
  end

end
