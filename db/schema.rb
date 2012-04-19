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

ActiveRecord::Schema.define(:version => 20120419161359) do

  create_table "answers", :force => true do |t|
    t.integer   "question_id",                      :null => false
    t.text      "text"
    t.text      "help_text"
    t.integer   "weight",        :default => 1,     :null => false
    t.integer   "display_order"
    t.boolean   "exclusive",     :default => false, :null => false
    t.string    "type"
    t.string    "default_value"
    t.timestamp "created_at",                       :null => false
    t.timestamp "updated_at",                       :null => false
    t.text      "metadata"
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"

  create_table "assignments", :force => true do |t|
    t.string    "title"
    t.timestamp "created_at",                       :null => false
    t.timestamp "updated_at",                       :null => false
    t.boolean   "self_evaluate", :default => false, :null => false
  end

  create_table "authentications", :force => true do |t|
    t.string    "provider",   :null => false
    t.string    "uid",        :null => false
    t.integer   "person_id",  :null => false
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  add_index "authentications", ["provider", "uid"], :name => "index_authentications_on_provider_and_uid"

  create_table "evaluation_responses", :force => true do |t|
    t.integer   "evaluatee_id"
    t.integer   "evaluation_id"
    t.string    "access_code"
    t.timestamp "started_at"
    t.timestamp "completed_at"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
    t.integer   "evaluator_id"
    t.timestamp "submitted_at"
  end

  create_table "evaluation_templates", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "assignment_id"
    t.integer  "person_id"
    t.string   "access_code"
    t.datetime "open_at"
    t.datetime "close_at"
    t.integer  "display_order"
    t.text     "metadata"
    t.boolean  "instructor",    :default => false
    t.boolean  "peer"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "evaluation_templates", ["access_code"], :name => "index_evaluation_templates_on_access_code"

  create_table "evaluations", :force => true do |t|
    t.string    "title"
    t.text      "description"
    t.integer   "assignment_id"
    t.integer   "person_id"
    t.timestamp "created_at",                       :null => false
    t.timestamp "updated_at",                       :null => false
    t.string    "access_code"
    t.timestamp "open_at"
    t.timestamp "close_at"
    t.integer   "display_order"
    t.text      "metadata"
    t.boolean   "peer"
    t.boolean   "instructor",    :default => false
    t.integer   "evaluator_id"
    t.integer   "evaluatee_id"
    t.datetime  "started_at"
    t.datetime  "submitted_at"
    t.datetime  "completed_at"
    t.boolean   "project",       :default => false
  end

  add_index "evaluations", ["access_code"], :name => "index_evaluations_on_access_code"

  create_table "feedbacks", :force => true do |t|
    t.integer   "evaluator_id",           :null => false
    t.integer   "evaluation_response_id", :null => false
    t.text      "remarks",                :null => false
    t.timestamp "created_at",             :null => false
    t.timestamp "updated_at",             :null => false
  end

  create_table "option_templates", :force => true do |t|
    t.string   "question_template_id"
    t.text     "text"
    t.text     "help_text"
    t.integer  "display_order"
    t.boolean  "exclusive",            :default => false
    t.text     "metadata"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "people", :force => true do |t|
    t.string    "first_name"
    t.string    "last_name"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
    t.string    "email"
    t.string    "github_handle"
  end

  create_table "question_templates", :force => true do |t|
    t.integer  "section_template_id"
    t.text     "text"
    t.text     "help_text"
    t.string   "type"
    t.string   "pick"
    t.integer  "display_order"
    t.boolean  "mandatory",           :default => false
    t.integer  "correct_answer_id"
    t.text     "metadata"
    t.integer  "weight"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer   "section_id",                           :null => false
    t.text      "text"
    t.text      "help_text"
    t.string    "type"
    t.string    "pick"
    t.integer   "display_order"
    t.boolean   "mandatory",         :default => false, :null => false
    t.integer   "correct_answer_id"
    t.text      "metadata"
    t.timestamp "created_at",                           :null => false
    t.timestamp "updated_at",                           :null => false
  end

  create_table "response_answers", :force => true do |t|
    t.integer   "evaluation_response_id"
    t.integer   "question_id"
    t.integer   "answer_id"
    t.text      "serialized_value"
    t.string    "unit"
    t.timestamp "created_at",             :null => false
    t.timestamp "updated_at",             :null => false
  end

  add_index "response_answers", ["evaluation_response_id"], :name => "index_response_answers_on_response_id"

  create_table "section_templates", :force => true do |t|
    t.integer  "evaluation_template_id", :null => false
    t.string   "title"
    t.text     "description"
    t.integer  "display_order"
    t.text     "metadata"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "section_templates", ["evaluation_template_id"], :name => "index_section_templates_on_evaluation_template_id"

  create_table "sections", :force => true do |t|
    t.integer   "evaluation_id", :null => false
    t.string    "title"
    t.text      "description"
    t.integer   "display_order"
    t.text      "metadata"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
  end

  add_index "sections", ["evaluation_id"], :name => "index_evaluation_sections_on_evaluation_id"

end
