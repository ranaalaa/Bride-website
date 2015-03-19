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

ActiveRecord::Schema.define(version: 20150315224232) do

  create_table "dj_packages", force: true do |t|
    t.string   "Package"
    t.string   "Name"
    t.text     "Description"
    t.string   "Price"
    t.string   "Overtime"
    t.string   "per"
    t.string   "Hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "djpackages", force: true do |t|
    t.string   "Name"
    t.text     "Description"
    t.string   "Price"
    t.integer  "Djs_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "djpackages", ["Djs_id"], name: "index_djpackages_on_Djs_id"

  create_table "djs", force: true do |t|
    t.string   "Name"
    t.text     "Address"
    t.string   "Phone"
    t.string   "Email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "photo"
  end

  create_table "dpackages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "price"
    t.integer  "dj_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dpackages", ["dj_id"], name: "index_dpackages_on_dj_id"

end
