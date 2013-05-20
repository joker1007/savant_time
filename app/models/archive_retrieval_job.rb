class ArchiveRetrievalJob < ActiveRecord::Base
  validates :jid, presence: true

  def job
    return @job if @job

    glacier = Glacier.new(nil)
    @job = glacier.vault.jobs.get(jid)
  end

  def write_output(aid)
    archive = Archive.find_by!(aid: aid)
    File.open(Pathname(Settings.download_dir) + archive.description, "wb:ASCII-8BIT") do |f|
      job.get_output io: f
    end
  end
end
