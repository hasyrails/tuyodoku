# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_04_062051) do

  create_table "authors", force: :cascade do |t|
    t.integer "book_id"
    t.string "name", null: false
    t.boolean "is_representative", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_authors_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title", null: false
    t.string "image"
    t.date "published_at"
    t.string "google_books_api_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"googlebooksapi_id\"", name: "index_books_on_googlebooksapi_id", unique: true
  end

  add_foreign_key "authors", "books"
end
