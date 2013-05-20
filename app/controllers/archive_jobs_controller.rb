class ArchiveJobsController < ApplicationController
  def create
    root_path = Pathname.new(Settings.root_dir)
    real_path = root_path + "#{current_path}"
    ArchiveWorker.perform_async(real_path.to_s)
    render nothing: true, status: :ok
  end

  def bulk_create
    params[:targets].map {|t| URI.unescape(t)}.each do |fullpath|
      ArchiveWorker.perform_async(fullpath)
    end
    render nothing: true, status: :ok
  end
end
