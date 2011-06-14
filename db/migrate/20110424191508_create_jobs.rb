class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.integer :status
      t.datetime :expires_at

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
