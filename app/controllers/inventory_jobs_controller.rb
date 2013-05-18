class InventoryJobsController < ApplicationController
  protect_from_forgery except: [:callback]

  def create
    glacier = Glacier.new(nil)
    glacier.retrieve_inventory
    render nothing: true, status: :ok
  end
end
