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

ActiveRecord::Schema.define(version: 20170813134846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "question_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id",          null: false
    t.string   "content"
    t.integer  "question_type",      null: false
    t.integer  "min_value"
    t.integer  "max_value"
    t.integer  "option_number"
    t.integer  "selections_allowed"
    t.boolean  "required"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "responses"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
