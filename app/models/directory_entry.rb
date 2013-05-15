class DirectoryEntry
  include ActiveModel::Model
  attr_accessor :name, :fullpath, :pathname, :size, :archive_jobs

  def initialize(path)
    raise "#{path} is not directory" unless File.directory?(path)

    @name = File.basename(path)
    @fullpath = path
    @pathname = Pathname.new(path)
    @dir = Dir.open(path)
  end

  def entries
    return @entries if @entries

    dirs = []
    files = []
    Dir.glob((pathname + "*").to_s).map do |e|
      if File.directory?(e)
        dirs << DirectoryEntry.new(e)
      else
        files << FileEntry.new(e)
      end
    end

    dirs.sort_by!(&:name)
    files.sort_by!(&:name)

    @archive_jobs = ArchiveJob.where(fullpath: files.map(&:fullpath)).group_by {|j| j.fullpath}

    @entries = dirs.concat(files)
  end
end
