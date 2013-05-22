class DirectoryEntriesController < ApplicationController
  def index
    root_path = Pathname.new(Settings.root_dir)
    real_path = root_path + current_path
    @directory = DirectoryEntry.new(real_path.to_s)
    @entries = @directory.entries(params[:page])
    @archive_jobs = ArchiveJob.where(fullpath: @entries.map(&:fullpath))
    @loaded_archive_jobs = @archive_jobs.group_by {|j| j.fullpath}
    @archives = Archive.where(aid: @archive_jobs.pluck(:jid))
    @loaded_archives = @archives.group_by {|a| a.aid}
  end
end
