class ArchivesController < ApplicationController
  def index
    @archive_jobs = ArchiveJob.page(params[:page])
  end
end
