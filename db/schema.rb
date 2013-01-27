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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130127010434) do

  create_table "book_reviews", :force => true do |t|
    t.integer   "book_id"
    t.integer   "user_id"
    t.text      "review"
    t.boolean   "recommended"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "books", :force => true do |t|
    t.string    "title"
    t.string    "url"
    t.string    "main_topic"
    t.text      "description"
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "course_reviews", :force => true do |t|
    t.integer   "course_id"
    t.integer   "user_id"
    t.text      "review"
    t.boolean   "recommended"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string    "title"
    t.string    "url"
    t.string    "main_topic"
    t.string    "offered_by"
    t.text      "description"
    t.text      "syllabus"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "user_id"
  end

  create_table "curriculums", :force => true do |t|
    t.string   "name"
    t.string   "topic"
    t.integer  "number_of_resources"
    t.string   "completion_time"
    t.integer  "level"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "identities", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.string    "password_digest"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "resource_reviews", :force => true do |t|
    t.integer  "resource_id"
    t.integer  "user_id"
    t.text     "review"
    t.boolean  "recommended"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "resources", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.integer  "user_id"
    t.string   "resource_type"
    t.integer  "curriculum_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "tutorial_reviews", :force => true do |t|
    t.integer   "tutorial_id"
    t.integer   "user_id"
    t.text      "review"
    t.boolean   "recommended"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "tutorials", :force => true do |t|
    t.string    "title"
    t.string    "url"
    t.string    "main_topic"
    t.string    "offered_by"
    t.text      "description"
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "tweets", :force => true do |t|
    t.string    "from_user"
    t.string    "tweet_text"
    t.integer   "tweet_id"
    t.integer   "course_id"
    t.integer   "book_id"
    t.integer   "tutorial_id"
    t.boolean   "tweet_already_exists"
    t.boolean   "tweet_posted_to_reviews"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "resource_id"
  end

  create_table "url_data", :force => true do |t|
    t.integer   "course_id"
    t.integer   "book_id"
    t.integer   "tutorial_id"
    t.integer   "mozrank"
    t.integer   "moz_backlinks"
    t.integer   "google_backlinks"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "resource_id"
  end

  create_table "users", :force => true do |t|
    t.string    "provider"
    t.string    "uid"
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
