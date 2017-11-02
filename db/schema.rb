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

ActiveRecord::Schema.define(version: 20160702162920) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "comments",   limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courts", force: :cascade do |t|
    t.string   "picture",       limit: 255
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "phone",         limit: 255
    t.string   "email",         limit: 255
    t.string   "website",       limit: 255
    t.integer  "number_courts", limit: 4
    t.string   "prizes",        limit: 255
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "admin_user_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "match_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "match_types_profiles", id: false, force: :cascade do |t|
    t.integer "profile_id",    limit: 4, null: false
    t.integer "match_type_id", limit: 4, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.date     "date"
    t.string   "court",           limit: 255
    t.integer  "player1_id",      limit: 4
    t.integer  "player2_id",      limit: 4
    t.integer  "player3_id",      limit: 4
    t.integer  "player4_id",      limit: 4,     null: false
    t.integer  "match_type_id",   limit: 4
    t.integer  "ranking_type_id", limit: 4,     null: false
    t.string   "result1_1",       limit: 255
    t.integer  "result1_2",       limit: 4,     null: false
    t.integer  "result2_1",       limit: 4,     null: false
    t.string   "result2_2",       limit: 255
    t.string   "result3_1",       limit: 255
    t.integer  "result3_2",       limit: 4,     null: false
    t.integer  "winner1_id",      limit: 4
    t.integer  "winner2_id",      limit: 4
    t.text     "comments",        limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "nations", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.string   "flag",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string   "picture",     limit: 255
    t.string   "name",        limit: 255
    t.string   "prize",       limit: 255
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "price",                  precision: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.string   "phone_number",        limit: 255
    t.string   "contact_email",       limit: 255
    t.text     "description",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "match_type",          limit: 255
    t.string   "ranking_type",        limit: 255
    t.string   "club",                limit: 255
    t.string   "category",            limit: 255
    t.string   "level",               limit: 20,    null: false
    t.string   "nation",              limit: 255
    t.integer  "score_plays",         limit: 4
    t.integer  "score_wins",          limit: 4
    t.string   "gender",              limit: 10
  end

  create_table "ranking_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "picture",     limit: 255
    t.string   "name",        limit: 255
    t.string   "address",     limit: 255
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plan_id",                limit: 4
    t.string   "stripe_customer_token",  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
