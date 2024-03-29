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

ActiveRecord::Schema.define(version: 20131209081511) do

  create_table "academics", force: true do |t|
    t.string   "course"
    t.string   "percentage"
    t.string   "pass_year"
    t.string   "board"
    t.string   "stream"
    t.text     "institute"
    t.string   "place"
    t.string   "medium"
    t.integer  "seeker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conditions", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "opening_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opening_conditions", force: true do |t|
    t.integer  "opening_id"
    t.integer  "condition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "openings", force: true do |t|
    t.string   "title"
    t.string   "jtype"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professionals", force: true do |t|
    t.string   "company_name"
    t.string   "job_title"
    t.string   "worked_technology"
    t.date     "join_date"
    t.date     "left_date"
    t.integer  "seeker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.string   "technology"
    t.text     "description"
    t.integer  "seeker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seekers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "contact"
    t.string   "gender"
    t.date     "birth"
    t.text     "localaddress"
    t.text     "permanentaddress"
    t.string   "totalexperience"
    t.string   "currentCTC"
    t.string   "expectedCTC"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technicals", force: true do |t|
    t.string   "programming_skills"
    t.string   "web_skills"
    t.string   "database"
    t.string   "others"
    t.integer  "seeker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "localaddress"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
