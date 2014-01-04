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

ActiveRecord::Schema.define(:version => 20140104023059) do

  create_table "blogs", :force => true do |t|
    t.integer  "user_id"
    t.string   "blog_title"
    t.text     "blog_post"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "blogs", ["user_id"], :name => "index_blogs_on_user_id"

  create_table "comments", :force => true do |t|
    t.integer  "blog_id"
    t.string   "name",         :limit => 25
    t.text     "comment_text"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "email",        :limit => 100
  end

  add_index "comments", ["blog_id"], :name => "index_comments_on_blog_id"

  create_table "users", :force => true do |t|
    t.string   "first_name", :limit => 25
    t.string   "last_name",  :limit => 25
    t.string   "email",                    :default => "", :null => false
    t.string   "username",   :limit => 25
    t.string   "password",   :limit => 40
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
