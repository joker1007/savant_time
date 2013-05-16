class ArchiveWorker
  include Sidekiq::Worker
  sidekiq_options retry: 2

  def perform(path)
    glacier = Glacier.new(path)
    glacier.archive_create
  end
end
