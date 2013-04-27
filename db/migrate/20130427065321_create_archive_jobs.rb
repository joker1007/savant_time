class CreateArchiveJobs < ActiveRecord::Migration
  def change
    create_table :archive_jobs do |t|
      t.string :jid
      t.string :description
      t.string :fullpath, limit: 500
      t.timestamps
    end

    add_index :archive_jobs, :fullpath
  end
end
