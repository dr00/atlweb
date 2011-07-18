class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :name, :null => false
      t.text :description
      t.integer :num_CPUs, :null => false
      t.integer :memory_req, :null => false
      t.integer :diskspace_req, :null => false
      t.integer :bandwidth_req, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
