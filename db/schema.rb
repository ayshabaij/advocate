# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_07_044503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advocates", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.string "case"
    t.index ["email"], name: "index_advocates_on_email", unique: true
  end

  create_table "case_docs", force: :cascade do |t|
    t.bigint "advocate_id"
    t.string "document_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advocate_id"], name: "index_case_docs_on_advocate_id"
  end

  create_table "juniors", force: :cascade do |t|
    t.bigint "advocate_id"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["advocate_id"], name: "index_juniors_on_advocate_id"
    t.index ["email"], name: "index_juniors_on_email", unique: true
  end

  add_foreign_key "case_docs", "advocates"
  add_foreign_key "juniors", "advocates"
end
