class CustomerController < ApplicationController
  def index
      @records = Record.order(:c_id)
  end
  
  def current
      @records = Record.order(:c_id).where("p_date > ?", "2017-01-01")
  end
  
  def overdue
    @records = Record.order(:c_id).where(:a_paid => false)
  end
end
