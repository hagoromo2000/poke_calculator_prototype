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

ActiveRecord::Schema.define(version: 2023_01_31_002045) do

  create_table "abilities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.string "type"
    t.string "damage_class"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name", null: false
    t.string "type1", null: false
    t.string "type2"
    t.integer "hp", null: false
    t.integer "attack", null: false
    t.integer "defense", null: false
    t.integer "special_attack", null: false
    t.integer "special_defense", null: false
    t.integer "speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ability1"
    t.string "ability2"
    t.string "ability3"
  end

end
