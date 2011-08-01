class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :name, :null => false
      t.text :description
      t.string :sensor_server, :default => 'hercules'
      t.string :gui_url, :default => 'www.dslab.uwb.edu'
      t.string :sensor_map
      t.datetime :last_run_at
      t.string :program, :null => false
      t.string :args
      t.string :file_map
      t.string :last_outcome
      t.references :user
      t.references :resource

      t.timestamps
    end

    add_index :user_id
    add_index :last_run_at
  end

  def self.down
    drop_table :jobs
  end
end
