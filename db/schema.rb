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

ActiveRecord::Schema.define(version: 20131006231425) do

  create_table "note_books", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "note_books", ["user_id"], name: "index_note_books_on_user_id"

  create_table "notecollections", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notecollections", ["user_id"], name: "index_notecollections_on_user_id"

  create_table "notes", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "notecollection_id"
  end

  add_index "notes", ["notecollection_id"], name: "index_notes_on_notecollection_id"

  create_table "table2s", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "age"
    t.string   "vacation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "table3s", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "timesince"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_files", force: true do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
