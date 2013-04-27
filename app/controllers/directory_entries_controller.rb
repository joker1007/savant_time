class DirectoryEntriesController < ApplicationController
  def index
    root_path = Pathname.new(Settings.root_dir)
    real_path = root_path + current_path
    @directory = DirectoryEntry.new(real_path.to_s)
    @directory.entries
  end
end
