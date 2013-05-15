class ArchiveWorker
  include Sidekiq::Worker

  def perform(path)
    glacier = Glacier.new(path)
    glacier.archive_create
  end
end
