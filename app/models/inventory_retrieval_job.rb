class InventoryRetrievalJob < ActiveRecord::Base
  validates :jid, presence: true

  def job
    return @job if @job

    glacier = Glacier.new(nil)
    @job = glacier.vault.jobs.get(jid)
  end

  def archive_list
    job.get_output.body["ArchiveList"].map do |attrs|
      Archive.new(aid: attrs["ArchiveId"], description: URI.unescape(attrs["ArchiveDescription"]), filesize: attrs["Size"].to_s, sha256: attrs["SHA256TreeHash"])
    end
  end
end
