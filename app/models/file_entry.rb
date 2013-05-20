class FileEntry
  include ActiveModel::Model
  attr_accessor :name, :fullpath, :pathname, :size, :archive_job

  def initialize(path)
    raise "#{path} is not exist" unless File.exists?(path)
    @name = File.basename(path)
    @fullpath = path
    @pathname = Pathname.new(path)
    @size = FileTest.size(path)
  end

  def archive_job_from_collection(collection)
    collection[fullpath]
  end
end
