class JobNodes < ActiveRecord::Migration
  def self.up
    create_table :jobnodes do |t|
      t.references :job, :null => false
      t.references :node, :null => false 
      t.timestamps
    end
  end

  def self.down
  end
end
