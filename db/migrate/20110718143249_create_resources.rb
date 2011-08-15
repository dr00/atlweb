class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :name, :null => false
      t.text :description
      t.boolean :predefined, :default => false
      t.integer :cpus, :null => false
      t.integer :memory, :null => false
      t.integer :disk, :null => false
      t.integer :network, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
