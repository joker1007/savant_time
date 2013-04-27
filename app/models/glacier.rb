class Glacier
  def initialize(path)
    @path = path
  end

  def archive_create
    glacier = Fog::AWS::Glacier.new(aws_access_key_id: Settings.aws_access_key_id, aws_secret_access_key: Settings.aws_secret_access_key)
    vault = glacier.vaults.create id: Settings.vault_name
    archive = vault.archives.create body: File.open(@path), description: File.basename(@path), :multipart_chunk_size => 1024*1024
    ArchiveJob.create!(jid: archive.id, description: File.basename(@path), fullpath: @path)
  end
end
