class ArchiveRetrievalJobsController < ApplicationController
  def create
    archive = Archive.find(params[:archive_id])
    archive.retrieve
    render nothing: true, status: :ok
  end
end
