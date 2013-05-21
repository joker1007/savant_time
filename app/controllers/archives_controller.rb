class ArchivesController < ApplicationController
  def index
    @archive_jobs = ArchiveJob.includes(:archive).order("fullpath ASC").page(params[:page])
  end

  def destroy
    @archive = Archive.find(params[:id])
    @archive.destroy
    render nothing: true, status: :ok
  end
end
