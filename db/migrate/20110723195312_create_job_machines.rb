class CreateJobMachines < ActiveRecord::Migration
  def self.up
    create_table :job_machines do |t|
      t.references :job, :null => false
      t.references :node, :null => false 
      t.timestamps
    end
  end

  def self.down
    drop_table :job_machines
  end
end
