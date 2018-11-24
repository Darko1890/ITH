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

ActiveRecord::Schema.define(version: 2018_11_23_233318) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "city_avatar_file_name"
    t.string "city_avatar_content_type"
    t.integer "city_avatar_file_size"
    t.datetime "city_avatar_updated_at"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "plane_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "passenger_avatar_file_name"
    t.string "passenger_avatar_content_type"
    t.integer "passenger_avatar_file_size"
    t.datetime "passenger_avatar_updated_at"
    t.string "pas_avatar_file_name"
    t.string "pas_avatar_content_type"
    t.integer "pas_avatar_file_size"
    t.datetime "pas_avatar_updated_at"
    t.index ["plane_id"], name: "index_passengers_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "plane_avatar_file_name"
    t.string "plane_avatar_content_type"
    t.integer "plane_avatar_file_size"
    t.datetime "plane_avatar_updated_at"
    t.string "p_avatar_file_name"
    t.string "p_avatar_content_type"
    t.integer "p_avatar_file_size"
    t.datetime "p_avatar_updated_at"
    t.index ["city_id"], name: "index_planes_on_city_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "passenger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "ticket_avatar_file_name"
    t.string "ticket_avatar_content_type"
    t.integer "ticket_avatar_file_size"
    t.datetime "ticket_avatar_updated_at"
    t.string "t_avatar_file_name"
    t.string "t_avatar_content_type"
    t.integer "t_avatar_file_size"
    t.datetime "t_avatar_updated_at"
    t.string "tick_avatar_file_name"
    t.string "tick_avatar_content_type"
    t.integer "tick_avatar_file_size"
    t.datetime "tick_avatar_updated_at"
    t.index ["passenger_id"], name: "index_tickets_on_passenger_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
