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

ActiveRecord::Schema.define(version: 2018_11_10_233941) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["store_id"], name: "index_categories_on_store_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["product_id"], name: "index_suppliers_on_product_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["supplier_id"], name: "index_vendors_on_supplier_id"
  end

end