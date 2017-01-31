class ProductController < ApplicationController
  def index
    @records = Record.order(:p_num)
  end

  def quickly
    @records = Record.order(:p_num).where("p_qoh < ?", 5)
  end

  def slowly
    @records = Record.order(:p_num).where("p_qoh > ?", 5)
  end
end
