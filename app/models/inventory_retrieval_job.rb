class InventoryRetrievalJob < ActiveRecord::Base
  def job
    return @job if @job

    glacier = Glacier.new(nil)
    @job = glacier.vault.jobs.get(jid)
  end

  def archive_list
    job.get_output.body["ArchiveList"].map do |attrs|
      Archive.new(archive_id: attrs["ArchiveId"], description: attrs["ArchiveDescription"], created_at: attrs["CreationDate"], size: attrs["Size"], sha256: attrs["SHA256TreeHash"])
    end
  end
end
