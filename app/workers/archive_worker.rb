class ArchiveWorker
  include Sidekiq::Worker
  sidekiq_options retry: 2, queue: :savant_time

  def perform(path)
    glacier = Glacier.new(path)
    glacier.archive_create
  end
end
