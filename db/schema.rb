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

ActiveRecord::Schema.define(version: 20140504230855) do

  create_table "playlists", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.boolean  "qDrive"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists_songs", id: false, force: true do |t|
    t.integer "playlist_id"
    t.integer "song_id"
  end

  add_index "playlists_songs", ["playlist_id", "song_id"], name: "index_playlists_songs_on_playlist_id_and_song_id"

  create_table "privileges", force: true do |t|
    t.boolean  "qDrive"
    t.boolean  "addSong"
    t.boolean  "editSong"
    t.boolean  "deleteSong"
    t.boolean  "grantPermission"
    t.boolean  "addUser"
    t.boolean  "editUser"
    t.boolean  "deleteUser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "album"
    t.time     "duration"
    t.integer  "quality"
    t.boolean  "fccClean"
    t.boolean  "is_qDrive"
    t.string   "location"
    t.string   "format"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "privilege_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
