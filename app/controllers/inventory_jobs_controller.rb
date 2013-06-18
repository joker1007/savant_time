class InventoryJobsController < ApplicationController
  before_action :digest_authenticate

  def create
    glacier = Glacier.new(nil)
    glacier.retrieve_inventory
    render nothing: true, status: :ok
  end
end
