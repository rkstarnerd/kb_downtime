class DtCrsController < ApplicationController
  def new
    @dt_cr = DtCr.new
  end

  def create
    @dt_cr = DtCr.new(dt_cr_params)

    if @dt_cr.save
      flash[:notice] = "Please email the form to dissementations"
    else
      render :back
    end
  end

  private
    def dt_cr_params
      
    end
end