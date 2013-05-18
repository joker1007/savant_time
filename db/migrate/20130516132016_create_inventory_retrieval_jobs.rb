class CreateInventoryRetrievalJobs < ActiveRecord::Migration
  def change
    create_table :inventory_retrieval_jobs do |t|
      t.string :jid

      t.timestamps
    end
    add_index :inventory_retrieval_jobs, :jid, unique: true
  end
end
