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

ActiveRecord::Schema.define(version: 20170301120338) do

  create_table "divisions", force: :cascade do |t|
    t.integer  "devision_id",    limit: 4
    t.string   "business_unit",  limit: 255
    t.string   "division_nname", limit: 255
    t.string   "group_name",     limit: 255
    t.string   "team_name",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: :cascade do |t|
    t.integer  "service_id",   limit: 4
    t.integer  "devision_id",  limit: 4
    t.string   "year",         limit: 255
    t.text     "plan_name",    limit: 65535
    t.integer  "user_id",      limit: 4
    t.string   "status",       limit: 255
    t.string   "acitive_code", limit: 255
    t.string   "pj_code",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: :cascade do |t|
    t.integer  "service_id",   limit: 4
    t.string   "service_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "service_id",             limit: 4
    t.integer  "devision_id",            limit: 4
    t.string   "boss",                   limit: 255
    t.string   "user_name",              limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "values", force: :cascade do |t|
    t.integer  "status",     limit: 4
    t.integer  "month",      limit: 4
    t.integer  "plan_id",    limit: 4
    t.integer  "plan_type",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
