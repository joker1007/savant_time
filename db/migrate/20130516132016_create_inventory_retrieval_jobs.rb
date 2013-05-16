class CreateInventoryRetrievalJobs < ActiveRecord::Migration
  def change
    create_table :inventory_retrieval_jobs do |t|
      t.string :jid

      t.timestamps
    end
  end
end
