class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :file_path
      t.text :description
      t.string :outcome, :null => false
      t.references :job, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
