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

ActiveRecord::Schema.define(version: 20150913064131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pictures_users", id: false, force: :cascade do |t|
    t.integer "picture_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "family_id"
    t.integer  "parent_id"
    t.integer  "spouse_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "phone_number"
    t.string   "place_of_birth"
    t.string   "gender"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "users", ["parent_id"], name: "index_users_on_parent_id", using: :btree
  add_index "users", ["spouse_id"], name: "index_users_on_spouse_id", using: :btree

end
