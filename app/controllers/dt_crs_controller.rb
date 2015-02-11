class DtCrsController < ApplicationController
  def new
    @dt_cr = DtCr.new
  end

  def show
    @dt_cr = DtCr.find (params[:id])
  end

  def create
    @dt_cr = DtCr.new(dt_cr_params)
    @dt_cr.user_id = current_user.id

    if @dt_cr.save
      flash[:notice] = "Click Email to send the form to dissementations"
      redirect_to dt_cr_path(@dt_cr)
    else
      render 'new'
    end
  end

  private
    def dt_cr_params
      params.require(:dt_cr).permit(:z_number, :user_id)
    end
end