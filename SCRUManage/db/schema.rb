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

ActiveRecord::Schema.define(version: 20170520202213) do

  create_table "assignments", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "projectRole_id"
    t.integer  "project_id"
    t.integer  "user_id"
    t.index ["projectRole_id"], name: "index_assignments_on_projectRole_id"
    t.index ["project_id"], name: "index_assignments_on_project_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.datetime "addDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
    t.integer  "user_id"
    t.index ["project_id"], name: "index_comments_on_project_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "comments_projects", force: :cascade do |t|
    t.text     "content_comProj"
    t.datetime "date_comProj"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "project_id"
    t.index ["project_id"], name: "index_comments_projects_on_project_id"
    t.index ["user_id"], name: "index_comments_projects_on_user_id"
  end

  create_table "project_roles", force: :cascade do |t|
    t.string   "projRoleName"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sprint_states", force: :cascade do |t|
    t.string   "sprintStateName"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.string   "sprintName"
    t.text     "sprintDescription"
    t.datetime "StartDate"
    t.datetime "EndDate"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "project_id"
    t.integer  "sprintState_id"
    t.index ["project_id"], name: "index_sprints_on_project_id"
    t.index ["sprintState_id"], name: "index_sprints_on_sprintState_id"
  end

  create_table "task_states", force: :cascade do |t|
    t.string   "taskStateName"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "taskName"
    t.datetime "taskStart"
    t.datetime "taskEnd"
    t.text     "taskDescription"
    t.time     "taskEstTime"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sprint_id"
    t.integer  "taskState_id"
    t.index ["sprint_id"], name: "index_tasks_on_sprint_id"
    t.index ["taskState_id"], name: "index_tasks_on_taskState_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
