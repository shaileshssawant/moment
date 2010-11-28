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

ActiveRecord::Schema.define(:version => 20101128015937) do

  create_table "albums", :force => true do |t|
    t.string   "album_name",  :limit => 40
    t.string   "album_owner", :limit => 40
    t.string   "album_desc",  :limit => 100, :default => ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["album_name", "album_owner"], :name => "index_albums_on_album_name_and_album_owner", :unique => true

  create_table "contributers", :force => true do |t|
    t.integer "album_id"
    t.integer "user_id"
  end

  create_table "friends", :force => true do |t|
    t.integer "user_id"
    t.integer "friend_id",      :default => 0
    t.string  "request_status"
  end

  create_table "photos", :force => true do |t|
    t.integer "photo_id"
    t.string  "photo_name",        :limit => 40
    t.string  "photo_description", :limit => 100
    t.string  "photo_comment",     :limit => 100
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
