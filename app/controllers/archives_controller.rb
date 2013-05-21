class ArchivesController < ApplicationController
  def index
    @archive_jobs = ArchiveJob.includes(:archive).order("fullpath ASC").page(params[:page])
  end
end
