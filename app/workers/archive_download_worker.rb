class ArchiveDownloadWorker
  include Sidekiq::Worker
  sidekiq_options retry: 2, queue: :savant_time

  def perform(jid, aid)
    archive_retrieval_job = ArchiveRetrievalJob.find_by!(jid: jid)
    archive_retrieval_job.write_output(aid)
  end
end
