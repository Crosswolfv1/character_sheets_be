# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_250_312_014_453) do # rubocop:disable Metrics/BlockLength
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'character_sheets', id: :string, force: :cascade do |t|
    t.string 'user_id'
    t.string 'game_system_id'
    t.string 'name'
    t.jsonb 'extra_data'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['game_system_id'], name: 'index_character_sheets_on_game_system_id'
    t.index ['user_id'], name: 'index_character_sheets_on_user_id'
  end

  create_table 'game_systems', id: :string, force: :cascade do |t|
    t.string 'name'
    t.string 'system_type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', id: :string, force: :cascade do |t|
    t.string 'username'
    t.string 'email'
    t.string 'password_digest'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'character_sheets', 'game_systems'
  add_foreign_key 'character_sheets', 'users'
end
