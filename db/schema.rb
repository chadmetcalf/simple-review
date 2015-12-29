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

ActiveRecord::Schema.define(version: 20151229000330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "criteria", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "creator"
    t.uuid     "rubric_id"
    t.boolean  "active",      default: true
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "descriptors", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "level_id"
    t.boolean  "active",      default: true
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "indicators", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "creator"
    t.uuid     "criterium_id"
    t.boolean  "active",       default: true
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "levels", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "indicator_id"
    t.integer  "order"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.uuid     "creator_id"
    t.uuid     "reviewer_id"
    t.uuid     "reviewee_id"
    t.uuid     "rubric_id"
    t.boolean  "active"
    t.jsonb    "document"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rubrics", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "creator_id"
    t.boolean  "active",      default: true
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
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
    t.string   "provider"
    t.string   "provider_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["provider"], name: "index_users_on_provider", using: :btree
    t.index ["provider_id"], name: "index_users_on_provider_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
