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

ActiveRecord::Schema.define(version: 20160225235225) do

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
    t.integer  "style_id"
    t.integer  "category_id"
    t.text     "font_style"
    t.text     "font_size"
  end

  add_index "decks", ["category_id"], name: "index_decks_on_category_id"
  add_index "decks", ["style_id"], name: "index_decks_on_style_id"

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
