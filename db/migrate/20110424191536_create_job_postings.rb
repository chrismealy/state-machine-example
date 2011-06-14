class CreateJobPostings < ActiveRecord::Migration
  def self.up
    create_table :job_postings do |t|
      t.references :job
      t.datetime :expires_at

      t.timestamps
    end
  end

  def self.down
    drop_table :job_postings
  end
end
