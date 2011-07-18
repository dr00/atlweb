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

ActiveRecord::Schema.define(:version => 20110718184219) do

  create_table "job_nodes", :force => true do |t|
    t.integer  "job_id",     :null => false
    t.integer  "node_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string   "name",                                           :null => false
    t.text     "description"
    t.string   "sensor_server", :default => "hercules"
    t.string   "gui_url",       :default => "www.dslab.uwb.edu"
    t.string   "sensor_map"
    t.integer  "result_id"
    t.integer  "user_id"
    t.datetime "last_run_date"
    t.string   "program",                                        :null => false
    t.string   "args"
    t.string   "file_map"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "ipaddress",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", :force => true do |t|
    t.string   "name",          :null => false
    t.text     "description"
    t.integer  "num_CPUs",      :null => false
    t.integer  "memory_req",    :null => false
    t.integer  "diskspace_req", :null => false
    t.integer  "bandwidth_req", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", :force => true do |t|
    t.string   "file_path"
    t.text     "description"
    t.integer  "outcome",     :null => false
    t.integer  "job_id",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name",  :null => false
    t.string   "first_name", :null => false
    t.string   "last_name",  :null => false
    t.boolean  "is_admin",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
