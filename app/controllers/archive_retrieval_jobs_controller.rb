class ArchiveRetrievalJobsController < ApplicationController
  before_action :digest_authenticate

  def create
    archive = Archive.find(params[:archive_id])
    archive.retrieve
    render nothing: true, status: :ok
  end
end
