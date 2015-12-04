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

ActiveRecord::Schema.define(version: 20151204105356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string   "model"
    t.string   "make"
    t.string   "type"
    t.decimal  "frame_size"
    t.string   "color"
    t.string   "serial_number"
    t.string   "purchased_from"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  add_index "bikes", ["user_id"], name: "index_bikes_on_user_id", using: :btree

  create_table "runners", force: :cascade do |t|
    t.string   "nickname"
    t.string   "brand"
    t.string   "make"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "runners", ["user_id"], name: "index_runners_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "workout_cycles", force: :cascade do |t|
    t.string   "bike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_runs", force: :cascade do |t|
    t.string   "runner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.decimal  "distance"
    t.decimal  "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.integer  "user_id"
    t.decimal  "hours"
    t.decimal  "mins"
    t.decimal  "secs"
  end

  add_foreign_key "bikes", "users"
  add_foreign_key "runners", "users"
end
