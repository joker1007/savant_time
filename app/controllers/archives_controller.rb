class ArchivesController < ApplicationController
  before_action :digest_authenticate

  def index
    @archives = Archive.joins(:archive_job).includes(:archive_job).order("archive_jobs.fullpath ASC").page(params[:page])
  end

  def destroy
    @archive = Archive.find(params[:id])
    @archive.destroy
    render nothing: true, status: :ok
  end
end
