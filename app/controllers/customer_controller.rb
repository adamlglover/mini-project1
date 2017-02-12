class CustomerController < ApplicationController
  def index
      @records = Record.all.order(:c_id)#.where([":a_date < ?", :p_date ])
  end
  
  #def current
   #   @records = Record.order(:c_id).where("a_date < ?", 5)
  #end
  
  def overdue
    @records = Record.order(:c_id).where(:a_paid => false)
  end
end
