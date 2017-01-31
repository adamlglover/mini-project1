class CustomerController < ApplicationController
  def index
      @records = Record.order(:c_id)#.where([":a_date < ?", :p_date ])
  end
  
  def overdue
    @records = Record.order(:c_id).where(:a_paid => false)
  end
end
