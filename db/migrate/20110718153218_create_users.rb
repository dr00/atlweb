class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :null => false
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :home_dir, :null => false
      t.boolean :admin, :default => false
      t.string :password_hash
      t.string :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
