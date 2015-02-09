module ApplicationHelper
  def z_number(dt_cr_id)
    z_number = @dt_cr.id.to_s
    if z_number.size < 5
      z_number << "0" until z_number.size == 5
    else
      z_number
    end
  end
end
