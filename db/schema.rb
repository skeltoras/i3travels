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

ActiveRecord::Schema.define(version: 20140613091311) do

  create_table "customers", force: true do |t|
    t.string   "customer_name"
    t.string   "customer_street"
    t.string   "customer_plz"
    t.string   "customer_city"
    t.string   "customer_country"
    t.string   "customer_telephone"
    t.string   "customer_state"
    t.string   "customer_contact"
    t.string   "customer_telefax"
    t.string   "customer_email"
    t.string   "customer_homepage"
    t.boolean  "customer_is_active"
    t.boolean  "customer_show_email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id"

  create_table "rentings", force: true do |t|
    t.string   "renting_object"
    t.string   "renting_min_duration"
    t.string   "renting_cost"
    t.string   "renting_cost_duration"
    t.string   "renting_location"
    t.string   "renting_region"
    t.string   "renting_country"
    t.string   "renting_display_offer"
    t.string   "renting_object_shortdesc"
    t.text     "renting_object_longdesc"
    t.boolean  "renting_gallery"
    t.boolean  "renting_header_picture"
    t.boolean  "renting_header_slider"
    t.boolean  "renting_video"
    t.boolean  "renting_calendar"
    t.boolean  "renting_form"
    t.date     "renting_calendar_start"
    t.date     "renting_calendar_end"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rentings", ["customer_id"], name: "index_rentings_on_customer_id"

  create_table "travels", force: true do |t|
    t.string   "travel_type"
    t.string   "travel_arrival"
    t.string   "travel_location"
    t.string   "travel_region"
    t.string   "travel_country"
    t.string   "travel_display_offer"
    t.string   "travel_object_shortdesc"
    t.text     "travel_object_longdesc"
    t.boolean  "travel_gallery"
    t.boolean  "travel_header_picture"
    t.boolean  "travel_header_slider"
    t.boolean  "travel_video"
    t.boolean  "travel_calendar"
    t.boolean  "travel_form"
    t.date     "travel_calendar_start"
    t.date     "travel_calendar_end"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "travels", ["customer_id"], name: "index_travels_on_customer_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
