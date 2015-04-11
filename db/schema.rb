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

ActiveRecord::Schema.define(version: 20150411153121) do

  create_table "polls", force: true do |t|
    t.string   "question"
    t.text     "answer_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "blurb"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "ah_index"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "poll_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "fbid"
    t.string   "gender"
    t.string   "locale"
    t.string   "age_range"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
