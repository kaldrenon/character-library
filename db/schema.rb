# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_712_035_155) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'characters', force: :cascade do |t|
    t.string 'name'
    t.string 'race'
    t.integer 'level'
    t.integer 'char'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'character_class_id'
    t.integer 'stat_block_id'
  end

  create_table 'stat_blocks', force: :cascade do |t|
    t.integer 'strength'
    t.integer 'dexterity'
    t.integer 'constitution'
    t.integer 'intelligence'
    t.integer 'wisdom'
    t.integer 'charisma'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'character_id'
  end
end
