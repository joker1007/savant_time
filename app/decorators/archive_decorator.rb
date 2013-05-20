module ArchiveDecorator
  def retrieve_link
    link_to("Retrieve", archive_retrieval_jobs_path(archive_id: id), remote: true, method: :post, class: [:btn, "js-retrieve-archive", "btn-primary"])
  end
end
