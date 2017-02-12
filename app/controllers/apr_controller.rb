class AprController < ApplicationController
  
  def index
    @records = Record.order(:a_id)
  end
end
