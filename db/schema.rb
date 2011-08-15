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

ActiveRecord::Schema.define(:version => 20110810073414) do

  create_table "job_activities", :force => true do |t|
    t.string   "outcome"
    t.string   "machines",    :default => "n/a"
    t.string   "job_guid"
    t.string   "result"
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_activities", ["created_at"], :name => "index_job_activities_on_created_at"
  add_index "job_activities", ["job_id"], :name => "index_job_activities_on_job_id"
  add_index "job_activities", ["updated_at"], :name => "index_job_activities_on_updated_at"
  add_index "job_activities", ["user_id"], :name => "index_job_activities_on_user_id"

  create_table "jobs", :force => true do |t|
    t.string   "name",                                           :null => false
    t.text     "description"
    t.string   "command",                                        :null => false
    t.string   "args"
    t.string   "program_path",                                   :null => false
    t.string   "file_map",                                       :null => false
    t.string   "sensor_map",                                     :null => false
    t.string   "sensor_server", :default => "hercules"
    t.string   "gui_url",       :default => "www.dslab.uwb.edu"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["created_at"], :name => "index_jobs_on_created_at"
  add_index "jobs", ["user_id"], :name => "index_jobs_on_user_id"

  create_table "resources", :force => true do |t|
    t.string   "name",                           :null => false
    t.text     "description"
    t.boolean  "predefined",  :default => false
    t.integer  "cpus",                           :null => false
    t.integer  "memory",                         :null => false
    t.integer  "disk",                           :null => false
    t.integer  "network",                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                         :null => false
    t.string   "name",                             :null => false
    t.string   "email",                            :null => false
    t.string   "home_dir",                         :null => false
    t.boolean  "admin",         :default => false
    t.string   "password_hash"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
