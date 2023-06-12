# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_12_174119) do

  create_table "breeders", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "bio"
    t.integer "established_date"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "age"
    t.string "breed"
    t.string "sex"
    t.float "weight"
    t.string "size"
    t.integer "shelter_id"
    t.integer "breeder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "age"
    t.string "breed"
    t.string "sex"
    t.float "weight"
    t.string "size"
    t.integer "shelter_id"
    t.integer "breeder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "bio"
    t.integer "established_date"
  end

end
