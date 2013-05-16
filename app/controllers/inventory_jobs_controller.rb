class InventoryJobsController < ApplicationController
  def create
    glacier = Glacier.new(nil)
    glacier.inventory_retrieve
    render nothing: true, status: :ok
  end
end
