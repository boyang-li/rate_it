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

ActiveRecord::Schema.define(version: 20140509044655) do

  create_table "books", force: true do |t|
    t.string   "name",        limit: 128,             null: false
    t.string   "author",      limit: 64,              null: false
    t.text     "description",                         null: false
    t.string   "isbn",        limit: 13,              null: false
    t.string   "image",                               null: false
    t.integer  "viewed",      limit: 5,   default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.integer  "parent_id"
    t.integer  "top",         limit: 1
    t.string   "name",                  null: false
    t.text     "description",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorization", id: false, force: true do |t|
    t.integer "book_id",     null: false
    t.integer "category_id", null: false
  end

  create_table "comments", force: true do |t|
    t.integer  "book_id"
    t.string   "author",     limit: 64, null: false
    t.text     "text",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["book_id"], name: "index_comments_on_book_id"

  create_table "ratings", force: true do |t|
    t.integer  "book_id"
    t.integer  "comment_id"
    t.integer  "rating",     limit: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["book_id"], name: "index_ratings_on_book_id"
  add_index "ratings", ["comment_id"], name: "index_ratings_on_comment_id"

  create_table "tags", force: true do |t|
    t.integer  "book_id"
    t.string   "name",       limit: 32, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["book_id"], name: "index_tags_on_book_id"

end
