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

ActiveRecord::Schema.define(version: 2020_09_18_164659) do

  create_table "infos", force: :cascade do |t|
    t.string "fav_drink"
    t.string "least_fav"
    t.boolean "recommend"
    t.text "comment"
    t.integer "java_shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["java_shop_id"], name: "index_infos_on_java_shop_id"
  end

  create_table "java_shops", force: :cascade do |t|
    t.string "shop_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "infos", "java_shops"
end
