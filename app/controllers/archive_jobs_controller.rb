class ArchiveJobsController < ApplicationController
  def create
    root_path = Pathname.new(Settings.root_dir)
    real_path = root_path + "#{current_path}.#{params[:format]}"
    Glacier.new(real_path.to_s).archive_create
    render nothing: true, status: :ok
  end
end
