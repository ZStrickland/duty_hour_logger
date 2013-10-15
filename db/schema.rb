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

ActiveRecord::Schema.define(version: 20131015225640) do

  create_table "hourlogs", force: true do |t|
    t.integer  "user_id"
    t.integer  "h_study"
    t.integer  "h_sleep"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "meal"
    t.integer  "h_lecture"
    t.integer  "h_mandatory"
    t.integer  "h_extracurriculars"
    t.integer  "anxious"
    t.integer  "sad"
    t.integer  "depressed"
    t.integer  "energy"
    t.integer  "hopeless"
    t.integer  "sleep_trouble"
    t.integer  "awake_trouble"
    t.integer  "focus"
    t.integer  "no_school"
    t.string   "logdate"
    t.string   "primary_class"
    t.integer  "exercise"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "year"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
