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

ActiveRecord::Schema.define(version: 20140830220454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: true do |t|
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["match_id"], name: "index_conversations_on_match_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "liker_id"
    t.integer  "likee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["likee_id"], name: "index_likes_on_likee_id", using: :btree
  add_index "likes", ["liker_id", "likee_id"], name: "index_likes_on_liker_id_and_likee_id", unique: true, using: :btree
  add_index "likes", ["liker_id"], name: "index_likes_on_liker_id", using: :btree

  create_table "locations", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.float    "accuracy"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["user_id"], name: "index_locations_on_user_id", using: :btree

  create_table "matches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "rejections", force: true do |t|
    t.integer  "rejector_id"
    t.integer  "rejectee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rejections", ["rejectee_id"], name: "index_rejections_on_rejectee_id", using: :btree
  add_index "rejections", ["rejector_id", "rejectee_id"], name: "index_rejections_on_rejector_id_and_rejectee_id", unique: true, using: :btree
  add_index "rejections", ["rejector_id"], name: "index_rejections_on_rejector_id", using: :btree

  create_table "user_matches", force: true do |t|
    t.integer  "user_id"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_matches", ["match_id"], name: "index_user_matches_on_match_id", using: :btree
  add_index "user_matches", ["user_id"], name: "index_user_matches_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "fname"
    t.string   "lname"
    t.string   "dog_name"
    t.text     "bio"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

end
