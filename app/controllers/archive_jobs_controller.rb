class ArchiveJobsController < ApplicationController
  def create
    root_path = Pathname.new(Settings.root_dir)
    real_path = root_path + "#{current_path}.#{params[:format]}"
    ArchiveWorker.perform_async(real_path)
    render nothing: true, status: :ok
  end
end
