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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120304011916) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id",                      :null => false
    t.text     "text"
    t.text     "help_text"
    t.integer  "weight",        :default => 1,     :null => false
    t.integer  "display_order"
    t.boolean  "exclusive",     :default => false, :null => false
    t.string   "type"
    t.string   "default_value"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "self_evaluate", :default => false, :null => false
  end

  create_table "authentications", :force => true do |t|
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.integer  "person_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authentications", ["provider", "uid"], :name => "index_authentications_on_provider_and_uid"

  create_table "evaluation_sections", :force => true do |t|
    t.integer  "evaluation_id", :null => false
    t.string   "title"
    t.text     "description"
    t.integer  "display_order"
    t.text     "metadata"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "evaluation_sections", ["evaluation_id"], :name => "index_evaluation_sections_on_evaluation_id"

  create_table "evaluations", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "assignment_id"
    t.integer  "person_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "access_code"
    t.datetime "open_at"
    t.datetime "close_at"
    t.integer  "display_order"
    t.text     "metadata"
  end

  add_index "evaluations", ["access_code"], :name => "index_evaluations_on_access_code"

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "email"
    t.string   "github_handle"
  end

  create_table "questions", :force => true do |t|
    t.integer  "evaluation_section_id",                    :null => false
    t.text     "text"
    t.text     "help_text"
    t.string   "type"
    t.string   "pick"
    t.integer  "display_order"
    t.boolean  "mandatory",             :default => false, :null => false
    t.integer  "correct_answer_id"
    t.text     "metadata"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "response_answers", :force => true do |t|
    t.integer  "response_id"
    t.integer  "question_id"
    t.integer  "answer_id"
    t.text     "serialized_value"
    t.string   "unit"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "response_answers", ["response_id"], :name => "index_response_answers_on_response_id"

  create_table "responses", :force => true do |t|
    t.integer  "person_id"
    t.integer  "evaluation_id"
    t.string   "access_code"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
