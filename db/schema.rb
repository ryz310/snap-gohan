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

ActiveRecord::Schema.define(version: 20130831150135) do

  create_table "food_groups", force: true do |t|
    t.string   "number",     limit: 2,  default: "", null: false
    t.string   "name",       limit: 32, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.integer  "food_group_id"
    t.string   "number",                             limit: 5,  default: "",  null: false
    t.string   "classification",                     limit: 64, default: "",  null: false
    t.string   "subdivision",                        limit: 96, default: "",  null: false
    t.string   "name",                               limit: 96, default: "",  null: false
    t.float    "refuse",                                        default: 0.0, null: false
    t.float    "energy",                                        default: 0.0, null: false
    t.float    "energy_kj",                                     default: 0.0, null: false
    t.float    "water",                                         default: 0.0, null: false
    t.float    "protein",                                       default: 0.0, null: false
    t.float    "protein_sum_of_amino_acid_residuse",            default: 0.0, null: false
    t.float    "lipid",                                         default: 0.0, null: false
    t.float    "triacylglycerol_equivalents",                   default: 0.0, null: false
    t.float    "carbohydrate",                                  default: 0.0, null: false
    t.float    "ash",                                           default: 0.0, null: false
    t.float    "sodium",                                        default: 0.0, null: false
    t.float    "potassium",                                     default: 0.0, null: false
    t.float    "calcium",                                       default: 0.0, null: false
    t.float    "magnesium",                                     default: 0.0, null: false
    t.float    "phosphorus",                                    default: 0.0, null: false
    t.float    "iron",                                          default: 0.0, null: false
    t.float    "zinc",                                          default: 0.0, null: false
    t.float    "copper",                                        default: 0.0, null: false
    t.float    "manganese",                                     default: 0.0, null: false
    t.float    "iodine",                                        default: 0.0, null: false
    t.float    "selenium",                                      default: 0.0, null: false
    t.float    "chromium",                                      default: 0.0, null: false
    t.float    "molybdenum",                                    default: 0.0, null: false
    t.float    "retinol",                                       default: 0.0, null: false
    t.float    "alpha_carotenes",                               default: 0.0, null: false
    t.float    "beta_carotenes",                                default: 0.0, null: false
    t.float    "beta_cryptoxanthin",                            default: 0.0, null: false
    t.float    "bata_carotene_equivalents",                     default: 0.0, null: false
    t.float    "retinol_activity_equivalents",                  default: 0.0, null: false
    t.float    "vitamind",                                      default: 0.0, null: false
    t.float    "alpha_tocopherols",                             default: 0.0, null: false
    t.float    "beta_tocopherols",                              default: 0.0, null: false
    t.float    "gamma_tocopherols",                             default: 0.0, null: false
    t.float    "delta_tocopherols",                             default: 0.0, null: false
    t.float    "vitamink",                                      default: 0.0, null: false
    t.float    "thiamin",                                       default: 0.0, null: false
    t.float    "riboflavin",                                    default: 0.0, null: false
    t.float    "niacin",                                        default: 0.0, null: false
    t.float    "vitaminb6",                                     default: 0.0, null: false
    t.float    "vitaminb12",                                    default: 0.0, null: false
    t.float    "folate",                                        default: 0.0, null: false
    t.float    "pantothenic_acid",                              default: 0.0, null: false
    t.float    "biotin",                                        default: 0.0, null: false
    t.float    "ascorbic_acid",                                 default: 0.0, null: false
    t.float    "saturated_fatty_acids",                         default: 0.0, null: false
    t.float    "monounsaturated_fatty_acids",                   default: 0.0, null: false
    t.float    "polyunsaturated_fatty_acids",                   default: 0.0, null: false
    t.float    "cholesterol",                                   default: 0.0, null: false
    t.float    "soluble_dietary_fibers",                        default: 0.0, null: false
    t.float    "insoluble_dietary_fibers",                      default: 0.0, null: false
    t.float    "total_dietary_fibers",                          default: 0.0, null: false
    t.float    "salt_equivalents",                              default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foods", ["food_group_id"], name: "index_foods_on_food_group_id"

  create_table "foodstuffs", force: true do |t|
    t.integer  "menu_id"
    t.integer  "food_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foodstuffs", ["food_id"], name: "index_foodstuffs_on_food_id"
  add_index "foodstuffs", ["menu_id"], name: "index_foodstuffs_on_menu_id"

  create_table "menu_categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.integer  "category_id"
    t.string   "name",        limit: 64,  default: "", null: false
    t.string   "description", limit: 256, default: "", null: false
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["category_id"], name: "index_menus_on_category_id"

end
