# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090718154604) do

  create_table "comments", :force => true do |t|
    t.text     "body",       :null => false
    t.integer  "user_id",    :null => false
    t.integer  "diary_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diaries", :force => true do |t|
    t.text     "body",       :null => false
    t.integer  "user_id",    :null => false
    t.integer  "team_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",         :null => false
    t.string   "password_hash", :null => false
    t.string   "alias",         :null => false
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end