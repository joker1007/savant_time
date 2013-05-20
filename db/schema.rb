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

ActiveRecord::Schema.define(version: 20130518073429) do

  create_table "archive_jobs", force: true do |t|
    t.string   "jid"
    t.string   "description"
    t.string   "fullpath",    limit: 500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "archive_jobs", ["fullpath"], name: "index_archive_jobs_on_fullpath"

  create_table "archive_retrieval_jobs", force: true do |t|
    t.string   "jid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "archive_retrieval_jobs", ["jid"], name: "index_archive_retrieval_jobs_on_jid", unique: true

  create_table "archives", force: true do |t|
    t.string   "aid",         null: false
    t.string   "description"
    t.string   "filesize"
    t.string   "sha256"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "archives", ["aid"], name: "index_archives_on_aid", unique: true

  create_table "inventory_retrieval_jobs", force: true do |t|
    t.string   "jid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_retrieval_jobs", ["jid"], name: "index_inventory_retrieval_jobs_on_jid", unique: true

end
