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

ActiveRecord::Schema.define(version: 2018_09_27_181429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "statistics", force: :cascade do |t|
    t.string "ruby_version"
    t.string "test_suite"
    t.integer "expected_coverage"
    t.boolean "headless_chrome", default: false
    t.boolean "dotenv", default: false
    t.boolean "webpack", default: false
    t.string "webpack_type"
    t.boolean "devise", default: false
    t.string "devise_model_name"
    t.boolean "devise_override_views", default: false
    t.boolean "kaminari", default: false
    t.boolean "oj", default: false
    t.boolean "money_rails", default: false
    t.boolean "markdown", default: false
    t.string "timezone"
    t.string "locale"
    t.boolean "autocommit", default: false
    t.string "commit_msg"
    t.boolean "githook", default: false
    t.string "githook_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "background_job"
    t.string "arguments"
    t.boolean "foreman", default: false
    t.boolean "awesome_print", default: false
    t.boolean "factory_bot", default: false
    t.boolean "faker", default: false
    t.string "http_stubs"
    t.boolean "pg_search", default: false
    t.boolean "pundit", default: false
    t.boolean "bootswatch", default: false
    t.string "bootswatch_template_name"
  end

end
