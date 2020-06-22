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

ActiveRecord::Schema.define(version: 2020_06_22_163940) do

  create_table "groups", primary_key: "GroupId", force: :cascade do |t|
    t.string "Name"
    t.string "Icon"
    t.datetime "CreateAt"
  end

  create_table "transactions", primary_key: "TransactionId", force: :cascade do |t|
    t.string "AuthorId"
    t.string "Name"
    t.float "Amount"
    t.datetime "CreateAt"
  end

  create_table "users", primary_key: "AuthorId", force: :cascade do |t|
    t.string "Name"
  end

end
