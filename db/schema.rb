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

ActiveRecord::Schema.define(version: 2018_08_03_214124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jlpts", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanjis", force: :cascade do |t|
    t.string "title"
    t.string "radical"
    t.string "most_used"
    t.integer "strike"
    t.string "kun"
    t.text "eg"
    t.bigint "jlpt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pt"
    t.string "onyomi"
    t.index ["jlpt_id"], name: "index_kanjis_on_jlpt_id"
  end

  create_table "word_types", force: :cascade do |t|
    t.string "title"
    t.string "sub_type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "romaji"
    t.string "kana"
    t.string "kanji"
    t.text "obs"
    t.bigint "word_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "jlpt_id"
    t.string "pt"
    t.index ["jlpt_id"], name: "index_words_on_jlpt_id"
    t.index ["word_type_id"], name: "index_words_on_word_type_id"
  end

  add_foreign_key "kanjis", "jlpts"
  add_foreign_key "words", "jlpts"
end
