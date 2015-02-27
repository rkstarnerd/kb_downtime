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

ActiveRecord::Schema.define(version: 20150222235007) do

  create_table "articles", force: true do |t|
    t.string   "client_name"
    t.string   "question"
    t.string   "answer"
    t.string   "vdn"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dt_crs", force: true do |t|
    t.string   "z_number"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vdn"
    t.string   "location"
    t.string   "address_1"
    t.string   "department"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "country"
    t.integer  "phone"
    t.integer  "fax"
    t.boolean  "declined"
    t.string   "caller_type"
    t.string   "caller_first_name"
    t.string   "caller_last_name"
    t.string   "caller_title"
    t.text     "when_to_call"
    t.integer  "caller_phone"
    t.integer  "caller_ext"
    t.string   "caller_email"
    t.string   "how_did_you_learn"
    t.string   "unit"
    t.string   "name"
    t.string   "address_1_2"
    t.string   "address_2_2"
    t.string   "city_2"
    t.string   "state_2"
    t.string   "zip_code_2"
    t.string   "responsible_first_name_1"
    t.string   "responsible_last_name_1"
    t.string   "responsible_title_name_1"
    t.text     "responsible_description_1"
    t.string   "responsible_first_name_2"
    t.string   "responsible_last_name_2"
    t.string   "responsible_title_name_2"
    t.text     "responsible_description_2"
    t.string   "responsible_first_name_3"
    t.string   "responsible_last_name_3"
    t.string   "responsible_title_name_3"
    t.text     "responsible_description_3"
    t.string   "manager_first_name_1"
    t.string   "manager_last_name_1"
    t.string   "manager_title_name_1"
    t.integer  "manager_phone_1"
    t.date     "date_notified_1"
    t.text     "action_1"
    t.string   "manager_first_name_2"
    t.string   "manager_last_name_2"
    t.string   "manager_title_name_2"
    t.integer  "manager_phone_2"
    t.date     "date_notified_2"
    t.text     "action_2"
    t.string   "manager_first_name_3"
    t.string   "manager_last_name_3"
    t.string   "manager_title_name_3"
    t.integer  "manager_phone_3"
    t.date     "date_notified_3"
    t.text     "action_3"
    t.string   "involved_first_name_1"
    t.string   "involved_last_name_1"
    t.string   "involved_title_name_1"
    t.text     "involved_description_1"
    t.string   "involved_role_1"
    t.string   "involved_first_name_2"
    t.string   "involved_last_name_2"
    t.string   "involved_title_name_2"
    t.text     "involved_description_2"
    t.string   "involved_role_2"
    t.string   "involved_first_name_3"
    t.string   "involved_last_name_3"
    t.string   "involved_title_name_3"
    t.text     "involved_description_3"
    t.string   "involved_role_3"
    t.string   "when_incident_occurred"
    t.text     "incident_description"
    t.string   "where_incident_occurred"
    t.string   "how_do_you_know"
    t.text     "supporting_documentation"
    t.string   "code"
    t.string   "where"
    t.string   "when"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
