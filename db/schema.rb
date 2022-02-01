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

ActiveRecord::Schema.define(version: 2022_02_01_234401) do

  create_table "titles", force: :cascade do |t|
    t.integer "show_id"
    t.string "media_type"
    t.string "name"
    t.string "director"
    t.text "cast"
    t.string "country"
    t.string "date_added"
    t.integer "release_year"
    t.string "rating"
    t.string "duration"
    t.string "listed_in"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
