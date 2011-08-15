class CreateJobActivities < ActiveRecord::Migration
  def self.up
    create_table :job_activities do |t|
      t.string :outcome, :default => 'never run'
      t.string :machines, :default => 'n/a'
      t.string :job_guid
      t.string :outcome
      t.string :result
      t.references :user
      t.references :job
      t.references :resource

      t.timestamps
    end
  
    add_index :job_activities, :job_id
    add_index :job_activities, :user_id
    add_index :job_activities, :created_at
    add_index :job_activities, :updated_at
  end

  def self.down
    drop_table :job_activities
  end
end
