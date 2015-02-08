class DtCrsController < ApplicationController
  def new
    @dt_cr = DtCr.new
  end
end