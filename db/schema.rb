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

ActiveRecord::Schema.define(version: 2019_05_14_035822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.string "number"
    t.date "os_date"
    t.datetime "hour"
    t.string "medium"
    t.string "called"
    t.integer "operator"
    t.string "sector"
    t.string "responsible"
    t.string "contact"
    t.string "unity"
    t.string "scope"
    t.string "address"
    t.boolean "route"
    t.string "vehicle"
    t.string "ranking"
    t.string "modality"
    t.string "cause"
    t.string "description"
    t.string "authorization"
    t.string "priority"
    t.string "link"
    t.string "operational"
    t.boolean "measure"
    t.date "request_date"
    t.string "insertion_routing"
    t.string "reporting_routing"
    t.string "deliberation"
    t.string "temporal_lapse"
    t.string "order_record"
    t.string "feedback"
    t.string "execution_availability"
    t.string "devolution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
