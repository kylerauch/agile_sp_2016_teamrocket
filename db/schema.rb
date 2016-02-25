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

ActiveRecord::Schema.define(version: 20160225173256) do

  create_table "cards", force: :cascade do |t|
    t.string   "frontContent"
    t.string   "backContent"
    t.string   "description"
    t.boolean  "isTest",                   default: false
    t.integer  "deck_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "disabled"
    t.string   "image_front_file_name"
    t.string   "image_front_content_type"
    t.integer  "image_front_file_size"
    t.datetime "image_front_updated_at"
    t.string   "image_back_file_name"
    t.string   "image_back_content_type"
    t.integer  "image_back_file_size"
    t.datetime "image_back_updated_at"
  end

  add_index "cards", ["deck_id"], name: "index_cards_on_deck_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.string   "created_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.text     "font_style"
    t.text     "font_size"
  end

  add_index "decks", ["category_id"], name: "index_decks_on_category_id"

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
