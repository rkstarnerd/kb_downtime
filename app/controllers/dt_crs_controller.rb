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
      params.require(:dt_cr).permit(:z_number, :user_id, :declined, :unit, :caller_first_name, :name, :caller_last_name, :address_1_2, :caller_type, :address_2_2, :caller_title, :city_2, :when_to_call, :state_2, :zip_code_2, :caller_phone, :caller_ext, :caller_email, :how_did_you_learn, :responsible_first_name_1, :responsible_last_name_1, :responsible_title_name_1, :responsible_description_1, :responsible_first_name_2, :responsible_last_name_2, :responsible_title_name_2, :responsible_description_2, :responsible_first_name_3, :responsible_last_name_3, :responsible_title_name_3, :responsible_description_3, :manager_first_name_1, :manager_last_name_1, :manager_title_name_1, :manager_phone_1, :date_notified_1, :action_1, :manager_first_name_2, :manager_last_name_2, :manager_title_name_2, :manager_phone_2, :date_notified_2, :action_2, :manager_first_name_3, :manager_last_name_3, :manager_title_name_3, :manager_phone_3, :date_notified_3, :action_3, :involved_first_name_1, :involved_last_name_1, :involved_title_name_1, :involved_description_1, :involved_role_1, :involved_first_name_2, :involved_last_name_2, :involved_title_name_2, :involved_description_2, :involved_role_2, :involved_first_name_3, :involved_last_name_3, :involved_title_name_3, :involved_description_3, :involved_role_3, :when_incident_occurred, :incident_description, :where_incident_occurred, :how_do_you_know, :supporting_documentation, :code, :where, :when)
    end
end