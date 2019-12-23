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

ActiveRecord::Schema.define(version: 2019_12_20_054958) do

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "brand_name", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "category_name", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "street", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
  end

  create_table "order_items", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.integer "item_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity", null: false
    t.decimal "list_price", precision: 10, null: false
    t.decimal "discount", precision: 15, scale: 2
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.integer "order_status", null: false
    t.date "order_date", null: false
    t.date "required_date"
    t.date "shipped_date"
    t.bigint "store_id", null: false
    t.bigint "staff_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["staff_id"], name: "index_orders_on_staff_id"
    t.index ["store_id"], name: "index_orders_on_store_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "product_name", null: false
    t.bigint "brand_id", null: false
    t.bigint "category_id", null: false
    t.integer "model_year"
    t.decimal "list_price", precision: 10, null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name"
    t.string "email", null: false
    t.string "phone", null: false
    t.integer "active", null: false
    t.bigint "store_id", null: false
    t.bigint "manager_id"
    t.index ["manager_id"], name: "index_staffs_on_manager_id"
    t.index ["store_id"], name: "index_staffs_on_store_id"
  end

  create_table "stocks", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["store_id"], name: "index_stocks_on_store_id"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.string "street", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "staffs"
  add_foreign_key "orders", "stores"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "stocks", "products"
  add_foreign_key "stocks", "stores"
end
