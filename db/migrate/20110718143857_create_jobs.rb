class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :name, :null => false
      t.text :description
      t.string :command, :null => false
      t.string :args
      t.string :program_path, :null => false
      t.string :file_map, :null => false
      t.string :sensor_map, :null => false
      t.string :sensor_server, :default => 'hercules'
      t.string :gui_url, :default => 'www.dslab.uwb.edu'
      t.references :user

      t.timestamps
    end

    add_index :jobs, :user_id
    add_index :jobs, :created_at
  end

  def self.down
    drop_table :jobs
  end
end
