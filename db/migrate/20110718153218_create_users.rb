class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.boolean :is_admin, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
