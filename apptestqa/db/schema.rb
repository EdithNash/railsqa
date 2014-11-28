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

ActiveRecord::Schema.define(version: 20141012234151) do

  create_table "admin_stages", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proyect_id"
  end

  add_index "components", ["proyect_id"], name: "index_components_on_proyect_id"

  create_table "enviroments", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.text     "description"
    t.text     "evidence"
    t.date     "Incidente_date"
    t.date     "rvalidation_date"
    t.integer  "rvalidationcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicators", force: true do |t|
    t.string   "description"
    t.text     "definition"
    t.text     "calculation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyects", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "classification_id"
    t.integer  "statusqc_id"
  end

  add_index "proyects", ["classification_id"], name: "index_proyects_on_classification_id"
  add_index "proyects", ["statusqc_id"], name: "index_proyects_on_statusqc_id"

  create_table "rvalidations", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "severities", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statusincidents", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statusqcs", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.integer  "number"
    t.text     "description"
    t.text     "expected"
    t.text     "result"
    t.string   "rails"
    t.string   "g"
    t.string   "model"
    t.string   "Step"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sugestions", force: true do |t|
    t.text     "description"
    t.text     "evidence"
    t.date     "suggestion_date"
    t.text     "resolution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testcases", force: true do |t|
    t.string   "number"
    t.string   "name"
    t.text     "description"
    t.text     "request"
    t.text     "precondition"
    t.text     "comment"
    t.date     "execution"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "typetest_id"
    t.integer  "component_id"
    t.integer  "user_id"
    t.integer  "admin_stage_id"
  end

  add_index "testcases", ["admin_stage_id"], name: "index_testcases_on_admin_stage_id"
  add_index "testcases", ["component_id"], name: "index_testcases_on_component_id"
  add_index "testcases", ["typetest_id"], name: "index_testcases_on_typetest_id"
  add_index "testcases", ["user_id"], name: "index_testcases_on_user_id"

  create_table "typetests", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "values", force: true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "classification_id"
    t.integer  "indicator_id"
  end

  add_index "values", ["classification_id"], name: "index_values_on_classification_id"
  add_index "values", ["indicator_id"], name: "index_values_on_indicator_id"

end
