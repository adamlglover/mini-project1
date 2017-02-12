class InventoryController < ApplicationController
  def index
    @records = Record.order(:i_id)
  end
end
