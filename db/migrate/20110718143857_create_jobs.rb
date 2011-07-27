class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :name, :null => false
      t.text :description
      t.string :sensor_server, :default => 'hercules'
      t.string :gui_url, :default => 'www.dslab.uwb.edu'
      t.string :sensor_map
      t.references :user
      t.references :resource
      t.datetime :last_run_date
      t.string :program, :null => false
      t.string :args
      t.string :file_map
      t.string :last_outcome

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
