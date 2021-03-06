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

ActiveRecord::Schema.define(version: 20161121183337) do

  create_table "abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "desc"
    t.text     "text",       limit: 65535
    t.integer  "categ"
    t.string   "locale"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "locales", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagenames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "desc"
    t.text     "text",        limit: 65535
    t.integer  "pagename_id"
    t.string   "locale_code"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "partners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "desc"
    t.text     "text",       limit: 65535
    t.string   "image"
    t.float    "main",       limit: 24
    t.string   "locale"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "works", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "desc"
    t.text     "text",       limit: 65535
    t.string   "image"
    t.string   "locale"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
