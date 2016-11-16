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

ActiveRecord::Schema.define(version: 20161114100235) do

  create_table "abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "about_az",   limit: 65535
    t.text     "about_ru",   limit: 65535
    t.text     "about_en",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "desc_az",    limit: 65535
    t.text     "desc_ru",    limit: 65535
    t.text     "desc_en",    limit: 65535
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name_az"
    t.string   "name_en"
    t.string   "name_ru"
    t.string   "desc_az"
    t.string   "desc_ru"
    t.string   "desc_en"
    t.text     "about_az",   limit: 65535
    t.text     "about_ru",   limit: 65535
    t.text     "about_en",   limit: 65535
    t.string   "img"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
