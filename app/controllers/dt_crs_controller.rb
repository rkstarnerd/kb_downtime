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
      flash[:notice] = "Please email the form to dissementations"
      redirect_to articles_path
    else
      render :back
    end
  end

  private
    def dt_cr_params
      params.require(:dt_cr).permit(:z_number, :user_id)
    end
end