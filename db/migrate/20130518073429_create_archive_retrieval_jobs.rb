class CreateArchiveRetrievalJobs < ActiveRecord::Migration
  def change
    create_table :archive_retrieval_jobs do |t|
      t.string :jid, null: false

      t.timestamps
    end
    add_index :archive_retrieval_jobs, :jid, unique: true
  end
end
