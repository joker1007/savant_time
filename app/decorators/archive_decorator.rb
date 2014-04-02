module ArchiveDecorator
  def retrieve_link
    link_to "Retrieve",
      archive_retrieval_jobs_path(archive_id: id),
      remote: true,
      method: :post,
      data: {confirm: "Are You Sure?"},
      class: %w(btn btn-primary js-retrieve-archive)
  end

  def destroy_link
    link_to "Delete",
      archive_path(self),
      remote: true,
      method: :delete,
      data: {confirm: "Are You Sure?"},
      class: %w(btn btn-danger js-destroy-archive)
  end
end
