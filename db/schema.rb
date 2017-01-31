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

ActiveRecord::Schema.define(version: 20170130175920) do

  create_table "records", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "c_fn"
    t.string   "c_ln"
    t.string   "c_address"
    t.string   "c_state"
    t.integer  "c_zip"
    t.integer  "p_num"
    t.text     "p_descript"
    t.integer  "p_instock"
    t.date     "p_date"
    t.integer  "p_sold"
    t.integer  "p_qoh"
    t.decimal  "p_price"
    t.integer  "a_id"
    t.date     "a_date"
    t.boolean  "a_paid"
    t.integer  "i_id"
    t.integer  "i_order_size"
    t.string   "i_vendor_fn"
    t.string   "i_vendor_ln"
    t.string   "i_vendor_email"
    t.date     "i_order_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "p_name"
  end

end
