class Archive
  attr_accessor :archive_id, :description, :created_at, :size, :sha256

  def initialize(archive_id: nil, description: nil, created_at: nil, size: nil, sha256: nil)
    @archive_id  = archive_id
    @description = URI.unescape(description)
    @created_at  = created_at
    @size        = size
    @sha256      = sha256
  end
end
