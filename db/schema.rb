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

ActiveRecord::Schema.define(version: 20150608183825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.integer  "domain_id",                null: false
    t.string   "name",        limit: 64,   null: false
    t.string   "description"
    t.string   "mimetype",    limit: 10
    t.integer  "file_size"
    t.string   "path",        limit: 2000
    t.integer  "on_id"
    t.string   "on_type"
    t.string   "tag",         limit: 2000
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["domain_id", "on_type", "on_id", "tag", "name"], name: "ix_attach_0", unique: true, using: :btree

  create_table "boms", force: true do |t|
    t.integer  "domain_id"
    t.integer  "parent_product_id"
    t.integer  "child_product_id"
    t.float    "qty"
    t.string   "unit"
    t.string   "bom_type"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boms", ["domain_id", "updated_at"], name: "index_boms_0", using: :btree

  create_table "calendar_dates", force: true do |t|
    t.integer  "domain_id",                             null: false
    t.integer  "calendar_id",                           null: false
    t.string   "description"
    t.date     "sys_date",                              null: false
    t.integer  "julian_day"
    t.integer  "plan_year"
    t.integer  "plan_quarter"
    t.integer  "plan_month"
    t.integer  "plan_week"
    t.integer  "iso_year"
    t.integer  "start_time"
    t.decimal  "work_hours",   precision: 15, scale: 3
    t.datetime "shift1_start"
    t.datetime "shift1_end"
    t.datetime "shift2_start"
    t.datetime "shift2_end"
    t.datetime "shift3_start"
    t.datetime "shift3_end"
    t.datetime "shift4_start"
    t.datetime "shift4_end"
    t.integer  "week_day"
    t.boolean  "dayoff_flag"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendar_dates", ["calendar_id", "plan_year", "plan_month"], name: "ix_calendar_date_1", using: :btree
  add_index "calendar_dates", ["calendar_id", "sys_date"], name: "ix_calendar_date_0", unique: true, using: :btree

  create_table "calendars", force: true do |t|
    t.integer  "domain_id",                null: false
    t.string   "name",          limit: 64, null: false
    t.string   "description"
    t.boolean  "day1_off_flag"
    t.boolean  "day2_off_flag"
    t.boolean  "day3_off_flag"
    t.boolean  "day4_off_flag"
    t.boolean  "day5_off_flag"
    t.boolean  "day6_off_flag"
    t.boolean  "day7_off_flag"
    t.float    "day1_workhour"
    t.float    "day2_workhour"
    t.float    "day3_workhour"
    t.float    "day4_workhour"
    t.float    "day5_workhour"
    t.float    "day6_workhour"
    t.float    "day7_workhour"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calendars", ["domain_id", "name"], name: "ix_calendar_0", unique: true, using: :btree

  create_table "chits", force: true do |t|
    t.integer  "domain_id",              null: false
    t.integer  "entity_id"
    t.string   "name",        limit: 64, null: false
    t.string   "description",            null: false
    t.text     "template"
    t.text     "logic"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chits", ["domain_id", "entity_id", "name"], name: "ix_chits_0", unique: true, using: :btree

  create_table "code_expansions", force: true do |t|
    t.integer  "domain_id",         null: false
    t.integer  "expansion_code_id"
    t.string   "data_1",            null: false
    t.string   "data_2"
    t.string   "data_3"
    t.string   "data_4"
    t.string   "data_5"
    t.string   "data_6"
    t.string   "data_7"
    t.string   "data_8"
    t.string   "data_9"
    t.string   "data_10"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "code_expansions", ["domain_id", "updated_at"], name: "ix_code_expansions_0", using: :btree

  create_table "common_codes", force: true do |t|
    t.integer  "domain_id",              null: false
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.integer  "parent_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "common_codes", ["domain_id", "parent_id", "name"], name: "ix_common_cd_0", unique: true, using: :btree
  add_index "common_codes", ["parent_id"], name: "ix_common_cd_1", using: :btree

  create_table "companies", force: true do |t|
    t.integer  "domain_id",       null: false
    t.string   "name",            null: false
    t.string   "description"
    t.string   "nationality"
    t.string   "address"
    t.string   "rep_director"
    t.string   "registration_no"
    t.string   "homepage"
    t.boolean  "customer_flag"
    t.boolean  "supplier_flag"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["domain_id", "name"], name: "ix_companies_0", unique: true, using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "domain_id",    null: false
    t.string   "name",         null: false
    t.string   "description"
    t.string   "family_name"
    t.string   "given_name"
    t.string   "alias"
    t.string   "company"
    t.string   "department"
    t.string   "title"
    t.string   "email"
    t.string   "phone_office"
    t.string   "phone_mobile"
    t.string   "fax"
    t.string   "address"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["domain_id", "name"], name: "ix_contacts_0", using: :btree

  create_table "control_plans", force: true do |t|
    t.integer  "domain_id",             null: false
    t.integer  "engineering_master_id", null: false
    t.integer  "company_id"
    t.integer  "operation_id"
    t.integer  "machine_id"
    t.integer  "product_id"
    t.string   "prod_char"
    t.string   "oper_char"
    t.string   "special_char"
    t.string   "freq"
    t.integer  "sample_size"
    t.string   "control_method"
    t.string   "reaction_plan"
    t.string   "potential_effect"
    t.integer  "sev"
    t.string   "potential_cause"
    t.integer  "occ"
    t.string   "prevention"
    t.string   "detection"
    t.integer  "detec"
    t.integer  "rpn"
    t.string   "requirement"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "control_plans", ["engineering_master_id"], name: "ix_control_plans_0", using: :btree

  create_table "customer_complaints", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.integer  "company_id"
    t.integer  "product_id"
    t.date     "complan_date"
    t.string   "reason"
    t.integer  "qty"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_complaints", ["domain_id", "name"], name: "index_customer_complaints_0", unique: true, using: :btree
  add_index "customer_complaints", ["domain_id", "updated_at"], name: "index_customer_complaints_1", using: :btree

  create_table "customer_orders", force: true do |t|
    t.integer  "domain_id",                          null: false
    t.string   "name",        limit: 64
    t.string   "description"
    t.integer  "company_id"
    t.integer  "product_id"
    t.integer  "qty",                    default: 0
    t.integer  "price",                  default: 0
    t.integer  "total_price",            default: 0
    t.date     "ship_date"
    t.string   "price_term",  limit: 10
    t.string   "currency",    limit: 10
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_orders", ["domain_id", "company_id"], name: "index_customer_orders_2", using: :btree
  add_index "customer_orders", ["domain_id", "name"], name: "index_customer_orders_0", unique: true, using: :btree
  add_index "customer_orders", ["domain_id", "product_id"], name: "index_customer_orders_3", using: :btree
  add_index "customer_orders", ["domain_id", "updated_at"], name: "index_customer_orders_1", using: :btree

  create_table "defects", force: true do |t|
    t.integer  "domain_id",                null: false
    t.date     "work_date"
    t.string   "shift",         limit: 3
    t.integer  "work_order_id"
    t.integer  "operation_id"
    t.integer  "machine_id"
    t.integer  "product_id"
    t.string   "defect_code",   limit: 32
    t.integer  "defect_qty"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "defects", ["domain_id", "updated_at"], name: "index_defects_0", using: :btree
  add_index "defects", ["domain_id", "work_date", "shift", "operation_id", "machine_id", "product_id"], name: "index_defects_2", using: :btree
  add_index "defects", ["domain_id", "work_date"], name: "index_defects_1", using: :btree
  add_index "defects", ["domain_id", "work_order_id"], name: "index_defects_3", using: :btree

  create_table "delivery_places", force: true do |t|
    t.integer  "domain_id",              null: false
    t.integer  "company_id"
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delivery_places", ["domain_id", "company_id", "name"], name: "ix_delivery_place_0", unique: true, using: :btree
  add_index "delivery_places", ["domain_id", "company_id"], name: "ix_delivery_place_1", using: :btree

  create_table "diy_reports", force: true do |t|
    t.integer  "domain_id",                   null: false
    t.string   "name",             limit: 64, null: false
    t.string   "description"
    t.integer  "diy_selection_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diy_reports", ["diy_selection_id"], name: "ix_diy_report_1", using: :btree
  add_index "diy_reports", ["domain_id", "name"], name: "ix_diy_report_0", using: :btree

  create_table "diy_selections", force: true do |t|
    t.integer  "domain_id",                null: false
    t.string   "name",          limit: 64, null: false
    t.string   "description"
    t.string   "script_type",   limit: 10
    t.text     "service_logic"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diy_selections", ["domain_id", "name"], name: "ix_diy_sel_0", unique: true, using: :btree

  create_table "diy_services", force: true do |t|
    t.integer  "domain_id",                null: false
    t.string   "name",          limit: 64, null: false
    t.string   "description"
    t.string   "script_type",   limit: 10
    t.boolean  "active_flag"
    t.text     "service_logic"
    t.boolean  "atomic_flag"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "diy_services", ["domain_id", "name"], name: "ix_diy_svc_0", unique: true, using: :btree

  create_table "domains", force: true do |t|
    t.string   "name",          limit: 32, null: false
    t.string   "description"
    t.string   "timezone"
    t.boolean  "system_flag"
    t.string   "subdomain",     limit: 32
    t.string   "brand_name",    limit: 64
    t.string   "brand_image"
    t.string   "content_image"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engineering_masters", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.integer  "version"
    t.string   "status"
    t.string   "description"
    t.integer  "product_id"
    t.string   "part_name"
    t.integer  "customer_id"
    t.string   "prod_phase"
    t.integer  "key_user_id"
    t.string   "key_user_phone_no"
    t.date     "created_date"
    t.integer  "supplier_id"
    t.date     "sup_appr_date"
    t.date     "cust_eng_appr_date"
    t.date     "cust_qc_appr_date"
    t.date     "etc_appr_date"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engineering_masters", ["domain_id", "name"], name: "index_engineering_masters_0", unique: true, using: :btree
  add_index "engineering_masters", ["domain_id", "updated_at"], name: "index_engineering_masters_1", using: :btree

  create_table "entities", force: true do |t|
    t.integer  "domain_id",                      null: false
    t.string   "name",                limit: 64, null: false
    t.string   "description"
    t.string   "bundle",              limit: 64, null: false
    t.integer  "list_infographic_id"
    t.integer  "item_infographic_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entities", ["domain_id", "name"], name: "ix_entity_0", unique: true, using: :btree

  create_table "entity_columns", force: true do |t|
    t.integer "entity_id",                              null: false
    t.string  "name",        limit: 32,                 null: false
    t.string  "description"
    t.string  "term",        limit: 128
    t.string  "col_type",    limit: 20,                 null: false
    t.integer "col_size"
    t.boolean "nullable",                default: true
    t.string  "def_val"
    t.integer "uniq_rank",               default: 0
    t.string  "ref_type",    limit: 20
    t.string  "ref_name",    limit: 64
    t.integer "list_rank",               default: 0
    t.integer "disp_rank",               default: 0
  end

  add_index "entity_columns", ["entity_id"], name: "ix_entity_column_0", using: :btree

  create_table "entity_logics", force: true do |t|
    t.integer  "entity_id",              null: false
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.string   "level",       limit: 10
    t.text     "logic"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entity_logics", ["entity_id", "name"], name: "ix_entity_logic_0", using: :btree

  create_table "entity_properties", force: true do |t|
    t.integer "entity_id",                                 null: false
    t.string  "name",           limit: 64,                 null: false
    t.string  "description"
    t.string  "attribute_type", limit: 20,                 null: false
    t.string  "ref_type",       limit: 20
    t.string  "ref_name",       limit: 64
    t.boolean "editable",                  default: false
    t.integer "display_rank",              default: 0
  end

  add_index "entity_properties", ["entity_id"], name: "ix_entity_prop_0", using: :btree

  create_table "error_logs", force: true do |t|
    t.integer  "domain_id",                null: false
    t.date     "issue_date",               null: false
    t.string   "status",      limit: 16
    t.string   "error_type",  limit: 128
    t.string   "uri",         limit: 1000
    t.text     "message"
    t.text     "params"
    t.text     "stack_trace"
    t.integer  "creator_id"
    t.datetime "created_at"
  end

  add_index "error_logs", ["domain_id", "created_at"], name: "ix_error_log_1", using: :btree
  add_index "error_logs", ["domain_id", "issue_date"], name: "ix_error_log_0", using: :btree

  create_table "estimates", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.integer  "company_id"
    t.integer  "product_id"
    t.string   "machining_type"
    t.string   "material"
    t.integer  "yealy_demand_qty"
    t.string   "req_price_term"
    t.date     "req_date"
    t.date     "est_date"
    t.integer  "price"
    t.integer  "tooling_cost"
    t.string   "currency"
    t.string   "est_price_term"
    t.integer  "dev_cycle"
    t.date     "est_valid_date"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estimates", ["domain_id", "name"], name: "index_estimates_0", unique: true, using: :btree
  add_index "estimates", ["domain_id", "updated_at"], name: "index_estimates_1", using: :btree

  create_table "evaluations", force: true do |t|
    t.integer  "domain_id",  null: false
    t.date     "eval_date"
    t.string   "name"
    t.integer  "parent_id"
    t.string   "answer"
    t.integer  "score"
    t.string   "rating"
    t.string   "remark"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["domain_id", "parent_id", "name"], name: "index_evaluations_0", unique: true, using: :btree
  add_index "evaluations", ["parent_id"], name: "index_evaluations_1", using: :btree

  create_table "events", force: true do |t|
    t.string  "cid",   limit: 16, null: false
    t.string  "fid",   limit: 16, null: false
    t.string  "fvr",   limit: 16, null: false
    t.string  "did",   limit: 16, null: false
    t.string  "tid",   limit: 16, null: false
    t.string  "stm",   limit: 32, null: false
    t.string  "etm",   limit: 32, null: false
    t.string  "ctm",   limit: 32, null: false
    t.integer "kct"
    t.string  "typ"
    t.float   "vlc"
    t.string  "svr"
    t.float   "lat",              null: false
    t.float   "lng",              null: false
    t.float   "gx",               null: false
    t.float   "gy",               null: false
    t.float   "gz",               null: false
    t.string  "vdo"
    t.string  "f_vdo"
    t.string  "r_vdo"
    t.string  "ado"
  end

  create_table "exp_code_data", force: true do |t|
    t.integer  "domain_id",         null: false
    t.integer  "expansion_code_id"
    t.string   "data_1",            null: false
    t.string   "data_2"
    t.string   "data_3"
    t.string   "data_4"
    t.string   "data_5"
    t.string   "data_6"
    t.string   "data_7"
    t.string   "data_8"
    t.string   "data_9"
    t.string   "data_10"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exp_code_data", ["domain_id", "expansion_code_id", "data_1"], name: "ix_exp_code_data_1", using: :btree
  add_index "exp_code_data", ["domain_id", "expansion_code_id"], name: "ix_exp_code_data_0", using: :btree

  create_table "expansion_code_items", force: true do |t|
    t.integer "expansion_code_id"
    t.string  "name",              limit: 64, null: false
    t.string  "description",                  null: false
    t.integer "bind_index",                   null: false
    t.boolean "unique_flag"
    t.string  "ref_type",          limit: 20
    t.string  "ref_name",          limit: 64
    t.string  "col_type",          limit: 20, null: false
    t.integer "col_size"
    t.boolean "nullable"
  end

  create_table "expansion_codes", force: true do |t|
    t.integer  "domain_id",              null: false
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expansion_codes", ["domain_id", "name"], name: "ix_expansion_codes_0", unique: true, using: :btree
  add_index "expansion_codes", ["domain_id", "updated_at"], name: "ix_expansion_codes_1", using: :btree

  create_table "global_configs", force: true do |t|
    t.integer  "domain_id",               null: false
    t.string   "name",       limit: 64,   null: false
    t.string   "value",      limit: 2000
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.integer  "updater_id"
  end

  create_table "infographics", force: true do |t|
    t.integer  "domain_id",        null: false
    t.string   "name",             null: false
    t.string   "description"
    t.string   "infographic_type"
    t.string   "printer_type"
    t.text     "diagram"
    t.text     "print_command"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "infographics", ["domain_id", "name"], name: "ix_infographics_0", unique: true, using: :btree

  create_table "inspects", force: true do |t|
    t.integer  "domain_id",                             null: false
    t.integer  "label_status_id"
    t.integer  "product_id"
    t.string   "comp_type",       limit: 2,             null: false
    t.integer  "total_qty",                 default: 0
    t.integer  "good_qty",                  default: 0
    t.integer  "defect_qty",                default: 0
    t.boolean  "success"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inspects", ["domain_id", "comp_type"], name: "ix_inspects_1", using: :btree
  add_index "inspects", ["domain_id", "label_status_id"], name: "ix_inspects_0", using: :btree
  add_index "inspects", ["domain_id", "product_id"], name: "ix_inspects_3", using: :btree
  add_index "inspects", ["domain_id", "success"], name: "ix_inspects_2", using: :btree
  add_index "inspects", ["domain_id", "updated_at"], name: "ix_inspects_4", using: :btree

  create_table "inv_histories", force: true do |t|
    t.integer  "domain_id",                           null: false
    t.integer  "inventory_id",                        null: false
    t.integer  "lot_id"
    t.integer  "operation_id",                        null: false
    t.integer  "product_id",                          null: false
    t.string   "tran_type",    limit: 10
    t.integer  "prev_inv_qty",            default: 0
    t.integer  "tran_qty",                default: 0
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inv_histories", ["domain_id", "operation_id", "product_id"], name: "index_inv_histories_1", using: :btree
  add_index "inv_histories", ["domain_id", "updated_at"], name: "index_inv_histories_0", using: :btree

  create_table "inventories", force: true do |t|
    t.integer  "domain_id",                null: false
    t.integer  "operation_id"
    t.integer  "product_id"
    t.integer  "inv_qty",      default: 0
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventories", ["domain_id", "operation_id", "product_id"], name: "index_inventories_0", unique: true, using: :btree

  create_table "label_histories", force: true do |t|
    t.integer  "label_status_id",              null: false
    t.string   "description"
    t.integer  "warehouse_id"
    t.integer  "location_id"
    t.integer  "shipping_order_id"
    t.integer  "receipt_order_id"
    t.string   "status",            limit: 10
    t.string   "action",            limit: 10
    t.integer  "qty",                          null: false
    t.boolean  "inspect_result"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "action_type",       limit: 15
  end

  add_index "label_histories", ["label_status_id", "updated_at"], name: "ix_label_history_0", using: :btree
  add_index "label_histories", ["warehouse_id", "location_id"], name: "ix_label_history_1", using: :btree

  create_table "label_statuses", force: true do |t|
    t.integer  "domain_id",                    null: false
    t.string   "name",              limit: 64, null: false
    t.string   "description"
    t.integer  "product_id"
    t.integer  "company_id"
    t.integer  "warehouse_id"
    t.integer  "location_id"
    t.string   "comp_type",         limit: 2,  null: false
    t.string   "status",            limit: 10
    t.string   "action",            limit: 10
    t.string   "serial",            limit: 10, null: false
    t.integer  "qty",                          null: false
    t.date     "expiry_date"
    t.date     "in_date"
    t.date     "making_date"
    t.string   "invoice_no",        limit: 32
    t.integer  "shipping_order_id"
    t.integer  "receipt_order_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "action_type",       limit: 15
  end

  add_index "label_statuses", ["domain_id", "in_date", "location_id"], name: "ix_label_status_3", using: :btree
  add_index "label_statuses", ["domain_id", "in_date", "product_id", "company_id", "warehouse_id", "location_id"], name: "ix_label_status_2", using: :btree
  add_index "label_statuses", ["domain_id", "in_date", "product_id", "location_id"], name: "ix_label_status_4", using: :btree
  add_index "label_statuses", ["domain_id", "in_date", "updated_at"], name: "ix_label_status_1", using: :btree
  add_index "label_statuses", ["domain_id", "name"], name: "ix_label_status_0", unique: true, using: :btree
  add_index "label_statuses", ["domain_id", "receipt_order_id"], name: "ix_label_status_6", using: :btree
  add_index "label_statuses", ["domain_id", "shipping_order_id"], name: "ix_label_status_5", using: :btree

  create_table "lines", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.string   "dept"
    t.string   "line_type"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lines", ["domain_id", "name"], name: "index_lines_0", unique: true, using: :btree
  add_index "lines", ["domain_id", "updated_at"], name: "index_lines_1", using: :btree

  create_table "locations", force: true do |t|
    t.integer  "domain_id",                           null: false
    t.string   "name",         limit: 64,             null: false
    t.string   "description"
    t.integer  "warehouse_id"
    t.string   "area",         limit: 16,             null: false
    t.integer  "row",                     default: 0
    t.integer  "col",                     default: 0
    t.integer  "floor",                   default: 0
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["domain_id", "area"], name: "ix_location_2", using: :btree
  add_index "locations", ["domain_id", "name", "warehouse_id"], name: "ix_location_0", unique: true, using: :btree

  create_table "lots", force: true do |t|
    t.integer  "domain_id",                   null: false
    t.string   "name",             limit: 64, null: false
    t.date     "work_date",                   null: false
    t.integer  "operation_id",                null: false
    t.integer  "machine_id",                  null: false
    t.integer  "product_id",                  null: false
    t.integer  "actual_qty"
    t.integer  "rework_qty"
    t.integer  "defect_qty"
    t.string   "status",           limit: 10
    t.datetime "transaction_time"
    t.string   "description"
    t.integer  "work_order_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shift"
  end

  create_table "machine_checks", force: true do |t|
    t.integer  "domain_id",                     null: false
    t.string   "status"
    t.integer  "machine_id",                    null: false
    t.date     "plan_date"
    t.date     "due_date"
    t.date     "check_date"
    t.string   "check_plan",       limit: 4000
    t.string   "check_actual",     limit: 4000
    t.datetime "check_start_time"
    t.datetime "check_end_time"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machine_checks", ["domain_id", "machine_id"], name: "index_machine_checks_1", using: :btree
  add_index "machine_checks", ["domain_id", "plan_date"], name: "index_machine_checks_2", using: :btree
  add_index "machine_checks", ["domain_id", "updated_at"], name: "index_machine_checks_0", using: :btree

  create_table "machines", force: true do |t|
    t.integer  "domain_id",    null: false
    t.string   "name",         null: false
    t.string   "description"
    t.integer  "operation_id"
    t.string   "maker"
    t.string   "model_no"
    t.date     "birth_date"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "owner"
    t.string   "status"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machines", ["domain_id", "name"], name: "ix_machines_0", unique: true, using: :btree

  create_table "manual_actuals", force: true do |t|
    t.integer  "domain_id",                           null: false
    t.date     "work_date"
    t.string   "shift",         limit: 3
    t.integer  "operation_id"
    t.integer  "machine_id"
    t.integer  "product_id"
    t.integer  "work_order_id"
    t.integer  "actual_qty",              default: 0
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "manual_actuals", ["domain_id", "updated_at"], name: "index_manual_actuals_0", using: :btree
  add_index "manual_actuals", ["domain_id", "work_date", "shift", "operation_id", "machine_id", "product_id"], name: "index_manual_actuals_2", using: :btree
  add_index "manual_actuals", ["domain_id", "work_date"], name: "index_manual_actuals_1", using: :btree
  add_index "manual_actuals", ["domain_id", "work_order_id"], name: "index_manual_actuals_3", using: :btree

  create_table "menu_params", force: true do |t|
    t.integer "menu_id"
    t.string  "name",        limit: 32,   null: false
    t.string  "description",              null: false
    t.string  "value",       limit: 4000, null: false
  end

  add_index "menu_params", ["menu_id", "name"], name: "ix_menu_params_0", unique: true, using: :btree

  create_table "menus", force: true do |t|
    t.integer  "domain_id",                               null: false
    t.string   "name",        limit: 64,                  null: false
    t.string   "description"
    t.integer  "parent_id"
    t.string   "template",    limit: 128
    t.string   "menu_type",   limit: 20
    t.string   "category",    limit: 64
    t.integer  "rank",                    default: 100
    t.string   "icon_path"
    t.boolean  "hidden_flag",             default: false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["domain_id", "menu_type"], name: "ix_menu_2", using: :btree
  add_index "menus", ["domain_id", "parent_id", "name"], name: "ix_menu_0", unique: true, using: :btree
  add_index "menus", ["parent_id"], name: "ix_menu_1", using: :btree

  create_table "operations", force: true do |t|
    t.integer  "domain_id",              null: false
    t.string   "name",                   null: false
    t.string   "description"
    t.integer  "line_id"
    t.string   "op_type",     limit: 30
    t.boolean  "store_flag"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "operations", ["domain_id", "name"], name: "ix_operations_0", unique: true, using: :btree

  create_table "permissions", force: true do |t|
    t.integer  "role_id",                  null: false
    t.integer  "resource_id"
    t.string   "resource_type"
    t.string   "action_name",   limit: 64
    t.string   "method_name",   limit: 64
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["resource_type", "resource_id", "role_id"], name: "ix_pmss_1", using: :btree
  add_index "permissions", ["role_id", "resource_type", "resource_id"], name: "ix_pmss_0", using: :btree

  create_table "pfcs", force: true do |t|
    t.integer  "domain_id",             null: false
    t.integer  "engineering_master_id", null: false
    t.integer  "operation_id"
    t.integer  "op_seq"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pfcs", ["engineering_master_id"], name: "ix_pfcs_0", using: :btree

  create_table "prod_sets", force: true do |t|
    t.integer  "domain_id"
    t.integer  "operation_id"
    t.integer  "machine_id"
    t.integer  "product_id"
    t.float    "dist_rate"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prod_sets", ["domain_id", "operation_id", "machine_id", "product_id"], name: "index_prod_sets_0", unique: true, using: :btree

  create_table "products", force: true do |t|
    t.integer  "domain_id",     null: false
    t.string   "name",          null: false
    t.string   "description"
    t.integer  "company_id"
    t.string   "model_name"
    t.string   "comp_type"
    t.string   "engr_type"
    t.string   "proc_type"
    t.string   "category"
    t.string   "base_material"
    t.integer  "lot_qty"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["domain_id", "name"], name: "ix_products_0", unique: true, using: :btree

  create_table "project_members", force: true do |t|
    t.integer "project_id",            null: false
    t.integer "member_id"
    t.string  "role",       limit: 30
  end

  add_index "project_members", ["project_id", "member_id"], name: "ix_prj_member_0", using: :btree

  create_table "projects", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.integer  "progress_rate"
    t.integer  "manager_id"
    t.integer  "customer_id"
    t.date     "start_date"
    t.date     "due_date"
    t.date     "end_date"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["domain_id", "name"], name: "index_projects_0", unique: true, using: :btree
  add_index "projects", ["domain_id", "updated_at"], name: "index_projects_1", using: :btree

  create_table "properties", force: true do |t|
    t.integer  "domain_id",              null: false
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.string   "value"
    t.integer  "on_id"
    t.string   "on_type"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["domain_id", "on_type", "on_id", "name"], name: "ix_property_0", unique: true, using: :btree

  create_table "purchasings", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.integer  "company_id"
    t.integer  "product_id"
    t.string   "status"
    t.date     "plan_date"
    t.date     "payment_date"
    t.string   "invoice_no"
    t.string   "price_term"
    t.integer  "plan_price"
    t.integer  "plan_qty"
    t.integer  "plan_total_price"
    t.integer  "actual_price"
    t.integer  "actual_qty"
    t.integer  "actual_total_price"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchasings", ["domain_id", "name"], name: "index_purchasings_0", unique: true, using: :btree
  add_index "purchasings", ["domain_id", "updated_at"], name: "index_purchasings_1", using: :btree

  create_table "quality_values", force: true do |t|
    t.integer  "domain_id"
    t.integer  "control_plan_id"
    t.integer  "work_order_id"
    t.integer  "tolerance_value_id"
    t.date     "check_date"
    t.float    "value"
    t.integer  "inspector_id"
    t.boolean  "success_flag"
    t.integer  "freq_idx"
    t.integer  "sample_idx"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quality_values", ["domain_id", "updated_at"], name: "index_quality_values_0", using: :btree

  create_table "receipt_orders", force: true do |t|
    t.integer  "domain_id",                  null: false
    t.integer  "receipt_plan_id"
    t.integer  "rank"
    t.string   "name",            limit: 64, null: false
    t.date     "work_date"
    t.integer  "product_id"
    t.integer  "company_id"
    t.integer  "qty"
    t.integer  "warehouse_id"
    t.integer  "location_id"
    t.string   "status",          limit: 10, null: false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "receipt_orders", ["domain_id", "name"], name: "ix_receipt_order_1", using: :btree
  add_index "receipt_orders", ["domain_id", "receipt_plan_id", "rank"], name: "ix_receipt_order_0", unique: true, using: :btree
  add_index "receipt_orders", ["domain_id", "work_date", "location_id"], name: "ix_receipt_order_4", using: :btree
  add_index "receipt_orders", ["domain_id", "work_date", "product_id"], name: "ix_receipt_order_3", using: :btree
  add_index "receipt_orders", ["domain_id", "work_date"], name: "ix_receipt_order_2", using: :btree

  create_table "receipt_plans", force: true do |t|
    t.integer  "domain_id",             null: false
    t.string   "name"
    t.date     "work_date"
    t.integer  "company_id"
    t.string   "status",     limit: 10
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "receipt_plans", ["domain_id", "name"], name: "ix_receipt_plan_0", unique: true, using: :btree
  add_index "receipt_plans", ["domain_id", "updated_at"], name: "ix_receipt_plan_1", using: :btree
  add_index "receipt_plans", ["domain_id", "work_date", "company_id"], name: "ix_receipt_plan_3", using: :btree
  add_index "receipt_plans", ["domain_id", "work_date"], name: "ix_receipt_plan_2", using: :btree

  create_table "rem_traces", force: true do |t|
    t.integer  "domain_id",               null: false
    t.string   "name",        limit: 128
    t.integer  "entity_id"
    t.string   "entity_type"
    t.text     "content"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rem_traces", ["domain_id", "entity_type"], name: "ix_rem_trace_0", using: :btree
  add_index "rem_traces", ["domain_id", "updated_at"], name: "ix_rem_trace_1", using: :btree

  create_table "report_params", force: true do |t|
    t.integer "report_id",                          null: false
    t.string  "name",        limit: 64,             null: false
    t.string  "description"
    t.string  "input_type",  limit: 20,             null: false
    t.string  "ref_type",    limit: 20
    t.string  "ref_name",    limit: 64
    t.integer "rank",                   default: 0
  end

  add_index "report_params", ["report_id"], name: "ix_report_param_0", using: :btree

  create_table "reports", force: true do |t|
    t.integer  "domain_id",   null: false
    t.string   "name",        null: false
    t.string   "description"
    t.string   "template"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["domain_id", "name"], name: "ix_reports_0", using: :btree

  create_table "request_material_details", force: true do |t|
    t.integer "request_material_id",             null: false
    t.integer "product_id",                      null: false
    t.integer "req_qty",             default: 0, null: false
    t.integer "res_qty",             default: 0, null: false
  end

  add_index "request_material_details", ["request_material_id"], name: "ix_req_mat_detail_0", using: :btree

  create_table "request_materials", force: true do |t|
    t.integer  "domain_id",                             null: false
    t.string   "description",                           null: false
    t.string   "status",        limit: 1, default: "W", null: false
    t.date     "work_date",                             null: false
    t.integer  "shift",                                 null: false
    t.integer  "work_order_id"
    t.integer  "product_id"
    t.integer  "qty",                     default: 0,   null: false
    t.integer  "warehouse_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "request_materials", ["domain_id", "product_id"], name: "ix_request_material_4", unique: true, using: :btree
  add_index "request_materials", ["domain_id", "status"], name: "ix_request_material_1", unique: true, using: :btree
  add_index "request_materials", ["domain_id", "updated_at"], name: "ix_request_material_5", using: :btree
  add_index "request_materials", ["domain_id", "work_date"], name: "ix_request_material_3", unique: true, using: :btree
  add_index "request_materials", ["domain_id", "work_order_id"], name: "ix_request_material_2", unique: true, using: :btree

  create_table "return_histories", force: true do |t|
    t.integer  "domain_id",        null: false
    t.integer  "stock_history_id"
    t.string   "reason"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "return_histories", ["domain_id", "updated_at"], name: "ix_return_histories_0", using: :btree

  create_table "return_ins", force: true do |t|
    t.integer  "domain_id",   null: false
    t.string   "return_num"
    t.string   "description"
    t.date     "work_date"
    t.integer  "product_id"
    t.string   "unit"
    t.integer  "qty"
    t.string   "action"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "return_ins", ["domain_id", "updated_at"], name: "ix_return_ins_0", using: :btree

  create_table "roles", force: true do |t|
    t.integer  "domain_id",              null: false
    t.string   "name",        limit: 64, null: false
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["domain_id", "name"], name: "ix_role_0", unique: true, using: :btree

  create_table "score_cards", force: true do |t|
    t.integer  "domain_id"
    t.integer  "company_id"
    t.integer  "month"
    t.float    "ppm"
    t.float    "quality"
    t.float    "cost"
    t.float    "delivery"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "score_cards", ["domain_id", "updated_at"], name: "index_score_cards_0", using: :btree

  create_table "service_in_params", force: true do |t|
    t.integer "resource_id"
    t.string  "resource_type"
    t.string  "name",          limit: 64
    t.string  "description"
    t.integer "rank"
  end

  add_index "service_in_params", ["resource_type", "resource_id"], name: "ix_svc_in_param_0", using: :btree

  create_table "service_out_params", force: true do |t|
    t.integer "resource_id"
    t.string  "resource_type"
    t.string  "name",          limit: 64
    t.string  "description"
    t.integer "rank"
  end

  add_index "service_out_params", ["resource_type", "resource_id"], name: "ix_svc_out_param_0", using: :btree

  create_table "shifts", force: true do |t|
    t.integer "domain_id",                               null: false
    t.string  "name",             limit: 32
    t.boolean "default_flag"
    t.integer "total_shift",      limit: 2
    t.string  "shift1_start",     limit: 8
    t.string  "shift2_start",     limit: 8
    t.string  "shift3_start",     limit: 8
    t.string  "shift1_end",       limit: 8
    t.string  "shift2_end",       limit: 8
    t.string  "shift3_end",       limit: 8
    t.integer "shift1_start_add", limit: 2,  default: 0
    t.integer "shift1_end_add",   limit: 2,  default: 0
    t.integer "shift2_start_add", limit: 2,  default: 0
    t.integer "shift2_end_add",   limit: 2,  default: 0
    t.integer "shift3_start_add", limit: 2,  default: 0
    t.integer "shift3_end_add",   limit: 2,  default: 0
  end

  add_index "shifts", ["domain_id", "name"], name: "ix_shift_0", unique: true, using: :btree

  create_table "shipping_orders", force: true do |t|
    t.integer  "domain_id",                               null: false
    t.integer  "shipping_plan_id"
    t.integer  "rank",                                    null: false
    t.string   "name",             limit: 64,             null: false
    t.date     "ship_date",                               null: false
    t.integer  "company_id"
    t.integer  "product_id"
    t.string   "cust_item_no",     limit: 32
    t.integer  "warehouse_id"
    t.integer  "location_id"
    t.string   "status",           limit: 10,             null: false
    t.integer  "plan_qty",                    default: 0, null: false
    t.integer  "out_qty",                     default: 0, null: false
    t.integer  "ship_qty",                    default: 0, null: false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shipping_orders", ["domain_id", "company_id", "product_id"], name: "ix_shipping_order_2", using: :btree
  add_index "shipping_orders", ["domain_id", "location_id"], name: "ix_shipping_order_3", using: :btree
  add_index "shipping_orders", ["domain_id", "shipping_plan_id", "rank"], name: "ix_shipping_order_0", unique: true, using: :btree
  add_index "shipping_orders", ["domain_id", "shipping_plan_id"], name: "ix_shipping_order_1", using: :btree

  create_table "shipping_plans", force: true do |t|
    t.integer  "domain_id",                    null: false
    t.string   "name",              limit: 64, null: false
    t.string   "description"
    t.date     "ship_date",                    null: false
    t.integer  "company_id"
    t.string   "order_no",          limit: 32
    t.string   "invoice_no"
    t.string   "status",            limit: 10
    t.string   "ship_type",         limit: 10
    t.integer  "delivery_place_id"
    t.string   "delivery_corp",     limit: 32
    t.string   "car_no",            limit: 20
    t.string   "driver",            limit: 20
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shipping_plans", ["domain_id", "name"], name: "ix_shipping_plan_0", unique: true, using: :btree
  add_index "shipping_plans", ["domain_id", "order_no"], name: "ix_shipping_plan_1", using: :btree
  add_index "shipping_plans", ["domain_id", "ship_date", "company_id"], name: "ix_shipping_plan_3", using: :btree
  add_index "shipping_plans", ["domain_id", "ship_date", "status"], name: "ix_shipping_plan_4", using: :btree
  add_index "shipping_plans", ["domain_id", "ship_date"], name: "ix_shipping_plan_2", using: :btree

  create_table "shippings", force: true do |t|
    t.integer  "domain_id",                    null: false
    t.string   "name",              limit: 64
    t.string   "description"
    t.integer  "customer_order_id"
    t.integer  "company_id"
    t.integer  "product_id"
    t.integer  "qty"
    t.integer  "price"
    t.integer  "total_price"
    t.date     "ship_date"
    t.string   "price_term",        limit: 10
    t.string   "currency",          limit: 10
    t.string   "logistics_no",      limit: 64
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shippings", ["domain_id", "company_id"], name: "index_shippings_2", using: :btree
  add_index "shippings", ["domain_id", "name"], name: "index_shippings_0", unique: true, using: :btree
  add_index "shippings", ["domain_id", "product_id"], name: "index_shippings_3", using: :btree
  add_index "shippings", ["domain_id", "updated_at"], name: "index_shippings_1", using: :btree

  create_table "stock_histories", force: true do |t|
    t.integer  "domain_id"
    t.integer  "from_warehouse_id"
    t.integer  "to_warehouse_id"
    t.integer  "from_location_id"
    t.integer  "to_location_id"
    t.integer  "product_id"
    t.integer  "label_status_id"
    t.integer  "qty",                          default: 0
    t.string   "action",            limit: 10
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stock_histories", ["domain_id", "from_location_id", "to_location_id"], name: "ix_stock_history_1", using: :btree
  add_index "stock_histories", ["domain_id", "label_status_id"], name: "ix_stock_history_3", using: :btree
  add_index "stock_histories", ["domain_id", "product_id"], name: "ix_stock_history_2", using: :btree
  add_index "stock_histories", ["domain_id", "updated_at"], name: "ix_stock_history_0", using: :btree

  create_table "stocks", force: true do |t|
    t.integer  "domain_id"
    t.integer  "warehouse_id"
    t.integer  "location_id"
    t.integer  "product_id"
    t.integer  "qty"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["domain_id", "warehouse_id", "location_id", "product_id"], name: "ix_stock_0", unique: true, using: :btree

  create_table "supplier_ppaps", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.string   "part_no"
    t.integer  "company_id"
    t.string   "prod_phase"
    t.integer  "key_user_id"
    t.date     "created_date"
    t.date     "sup_appr_date"
    t.date     "cust_eng_appr_date"
    t.date     "cust_qc_appr_date"
    t.date     "etc_appr_date"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "supplier_ppaps", ["domain_id", "name"], name: "index_supplier_ppaps_0", unique: true, using: :btree
  add_index "supplier_ppaps", ["domain_id", "updated_at"], name: "index_supplier_ppaps_1", using: :btree

  create_table "suppliers", force: true do |t|
    t.integer  "domain_id",                          null: false
    t.string   "name",        limit: 64,             null: false
    t.string   "description"
    t.integer  "company_id"
    t.integer  "data",                   default: 1
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suppliers", ["domain_id", "name"], name: "ix_suppliers_0", unique: true, using: :btree
  add_index "suppliers", ["domain_id", "updated_at"], name: "ix_suppliers_1", using: :btree

  create_table "task_assignments", force: true do |t|
    t.integer "project_id",  null: false
    t.integer "task_id",     null: false
    t.integer "resource_id", null: false
    t.integer "units"
  end

  add_index "task_assignments", ["project_id", "task_id", "resource_id"], name: "ix_task_assign_0", using: :btree

  create_table "task_relations", force: true do |t|
    t.integer "project_id",    null: false
    t.integer "from_task_id"
    t.integer "to_task_id"
    t.integer "relation_type"
    t.integer "lag"
  end

  add_index "task_relations", ["project_id"], name: "ix_task_rel_0", using: :btree

  create_table "tasks", force: true do |t|
    t.integer  "project_id",                  null: false
    t.integer  "parent_task_id"
    t.integer  "depth"
    t.integer  "seq"
    t.string   "name",           limit: 128
    t.string   "description",    limit: 4000
    t.string   "task_type",      limit: 10
    t.integer  "progress_rate"
    t.integer  "priority"
    t.date     "start_date"
    t.date     "due_date"
    t.date     "end_date"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "ix_task_0", using: :btree

  create_table "terminologies", force: true do |t|
    t.integer  "domain_id",                  null: false
    t.string   "name",                       null: false
    t.string   "description",   limit: 4000
    t.string   "locale",        limit: 15
    t.string   "category",      limit: 20
    t.string   "display",       limit: 1000
    t.string   "display_short"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terminologies", ["domain_id", "locale", "category", "name"], name: "ix_terminologies_0", unique: true, using: :btree

  create_table "tolerance_values", force: true do |t|
    t.integer  "domain_id",       null: false
    t.integer  "control_plan_id", null: false
    t.string   "name"
    t.float    "min_tolerance"
    t.float    "max_tolerance"
    t.string   "measure_tech"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tolerance_values", ["control_plan_id"], name: "ix_tolerance_values_0", using: :btree

  create_table "tool_checks", force: true do |t|
    t.integer  "domain_id"
    t.string   "status"
    t.integer  "tool_id"
    t.date     "plan_date"
    t.date     "due_date"
    t.date     "check_date"
    t.string   "check_plan"
    t.string   "check_actual"
    t.datetime "check_start_time"
    t.datetime "check_end_time"
    t.integer  "inspector_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tool_checks", ["domain_id", "updated_at"], name: "index_tool_checks_0", using: :btree

  create_table "tools", force: true do |t|
    t.integer  "domain_id",      null: false
    t.string   "name",           null: false
    t.string   "description"
    t.string   "maker"
    t.string   "model_no"
    t.date     "birth_date"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "owner"
    t.string   "status"
    t.string   "machining_type"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tools", ["domain_id", "name"], name: "ix_tools_0", unique: true, using: :btree

  create_table "tracks", force: true do |t|
    t.string  "cid",       limit: 16, null: false
    t.string  "fid",       limit: 16, null: false
    t.string  "fvr",       limit: 16, null: false
    t.string  "tid",       limit: 16, null: false
    t.string  "did",       limit: 16, null: false
    t.string  "stm",       limit: 32, null: false
    t.string  "ttm",       limit: 32, null: false
    t.string  "ctm",       limit: 32, null: false
    t.integer "kct",                  null: false
    t.float   "vlc"
    t.float   "a_vlc"
    t.float   "dst"
    t.float   "lat",                  null: false
    t.float   "lng",                  null: false
    t.float   "p_lat"
    t.float   "p_lng"
    t.float   "gx",                   null: false
    t.float   "gy",                   null: false
    t.float   "gz",                   null: false
    t.string  "f_img"
    t.string  "r_img"
    t.integer "domain_id",            null: false
  end

  create_table "users", force: true do |t|
    t.string   "login",                                          null: false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   limit: 64
    t.string   "locale",                 limit: 10
    t.string   "timezone",               limit: 64
    t.boolean  "admin_flag"
    t.boolean  "operator_flag"
    t.boolean  "active_flag"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  add_index "users_roles", ["role_id", "user_id"], name: "ix_user_role_1", using: :btree
  add_index "users_roles", ["user_id", "role_id"], name: "ix_user_role_0", unique: true, using: :btree

  create_table "variables", force: true do |t|
    t.integer  "domain_id",   null: false
    t.string   "name",        null: false
    t.string   "description"
    t.string   "category"
    t.text     "logic"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "variables", ["domain_id", "name"], name: "ix_variables_0", unique: true, using: :btree

  create_table "warehouses", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "warehouse_type"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "warehouses", ["domain_id", "name"], name: "index_warehouses_0", unique: true, using: :btree
  add_index "warehouses", ["domain_id", "updated_at"], name: "index_warehouses_1", using: :btree

  create_table "work_orders", force: true do |t|
    t.integer  "domain_id",                          null: false
    t.date     "work_date",                          null: false
    t.string   "shift",        limit: 5,             null: false
    t.integer  "operation_id",                       null: false
    t.integer  "machine_id",                         null: false
    t.integer  "product_id",                         null: false
    t.integer  "plan_qty"
    t.integer  "actual_qty",             default: 0
    t.integer  "defect_qty",             default: 0
    t.integer  "rework_qty",             default: 0
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_orders", ["work_date", "shift", "operation_id", "machine_id", "product_id"], name: "index_work_orders_0", using: :btree

  create_table "work_plans", force: true do |t|
    t.integer  "domain_id"
    t.date     "work_date"
    t.integer  "shift"
    t.integer  "operation_id"
    t.integer  "product_id"
    t.integer  "priority"
    t.integer  "plan_qty"
    t.integer  "lot_qty"
    t.integer  "label_cnt"
    t.integer  "print_cnt"
    t.integer  "printed_cnt"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_plans", ["domain_id", "work_date", "operation_id"], name: "index_work_plans_1", using: :btree
  add_index "work_plans", ["domain_id", "work_date"], name: "index_work_plans_0", using: :btree

  create_table "work_sheets", force: true do |t|
    t.integer  "domain_id"
    t.string   "name"
    t.string   "description"
    t.integer  "operation_id"
    t.integer  "product_id"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_sheets", ["domain_id", "name"], name: "index_work_sheets_0", unique: true, using: :btree
  add_index "work_sheets", ["domain_id", "updated_at"], name: "index_work_sheets_1", using: :btree

end
