class CreateJobNodes < ActiveRecord::Migration
  def self.up
    create_table :job_nodes do |t|
      t.references :job, :null => false
      t.references :node, :null => false 
      t.timestamps
    end
  end

  def self.down
    drop_table :job_nodes
  end
end
