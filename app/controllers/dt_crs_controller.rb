class DtCrsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :email_form]

  def new
    @dt_cr = DtCr.new
  end

  def show
  end

  def edit
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

def update
  if @dt_cr.update(dt_cr_params)
    flash[:notice] = "The form was updated."
    redirect_to dt_cr_path(@dt_cr)
  else
    render 'edit'
  end
end

def email_form
  @user = current_user

  #EmailForms.email_form(@dt_cr, @user).deliver
  flash[:notice] = "The form has been sent."
  redirect_to dt_cr_path(@dt_cr)
end

  private

    def set_form
      @dt_cr = DtCr.find(params[:id])
    end

    def dt_cr_params
      params.require(:dt_cr).permit(:z_number, :user_id, :vdn, :location, :address_1, :department, :address_2, :city, :state, :zip_code, :country, :phone, :fax, :declined, :unit, :caller_first_name, :name, :caller_last_name, :address_1_2, :caller_type, :address_2_2, :caller_title, :city_2, :when_to_call, :state_2, :zip_code_2, :caller_phone, :caller_ext, :caller_email, :how_did_you_learn, :responsible_first_name_1, :responsible_last_name_1, :responsible_title_name_1, :responsible_description_1, :responsible_first_name_2, :responsible_last_name_2, :responsible_title_name_2, :responsible_description_2, :responsible_first_name_3, :responsible_last_name_3, :responsible_title_name_3, :responsible_description_3, :manager_first_name_1, :manager_last_name_1, :manager_title_name_1, :manager_phone_1, :date_notified_1, :action_1, :manager_first_name_2, :manager_last_name_2, :manager_title_name_2, :manager_phone_2, :date_notified_2, :action_2, :manager_first_name_3, :manager_last_name_3, :manager_title_name_3, :manager_phone_3, :date_notified_3, :action_3, :involved_first_name_1, :involved_last_name_1, :involved_title_name_1, :involved_description_1, :involved_role_1, :involved_first_name_2, :involved_last_name_2, :involved_title_name_2, :involved_description_2, :involved_role_2, :involved_first_name_3, :involved_last_name_3, :involved_title_name_3, :involved_description_3, :involved_role_3, :when_incident_occurred, :incident_description, :where_incident_occurred, :how_do_you_know, :supporting_documentation, :code, :plan_24_yes, :plan_24_no, :where, :when)
    end
end