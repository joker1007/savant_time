class Glacier
  def initialize(path = nil)
    @path = path
  end

  def archive_create
    return nil if ArchiveJob.exists?(fullpath: @path)

    archive = vault.archives.create body: File.open(@path), description: File.basename(@path), :multipart_chunk_size => 1024*1024*4
    ArchiveJob.create!(jid: archive.id, description: File.basename(@path), fullpath: @path)
  end

  def retrieve_inventory
    job = vault.jobs.create(type: Fog::AWS::Glacier::Job::INVENTORY)
    InventoryRetrievalJob.create!(jid: job.id)
  end

  def retrieve_archive(aid)
    job = vault.jobs.create(type: Fog::AWS::Glacier::Job::ARCHIVE, archive_id: aid)
    ArchiveRetrievalJob.create(jid: job.id)
  end

  def destroy_archive(aid)
    vault.archives.get(aid).destroy
  end

  def glacier
    @glacier ||= Fog::AWS::Glacier.new(aws_access_key_id: Settings.aws_access_key_id, aws_secret_access_key: Settings.aws_secret_access_key, region: Settings.aws_region)
  end

  def vault
    @vault ||= glacier.vaults.create id: Settings.vault_name
  end
end
