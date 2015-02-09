module ApplicationHelper
  def z_number(dt_cr_id)
    z_number = @dt_cr.id.to_s
    if z_number.size < 6
      z_number.prepend "0" until z_number.size == 6
    else
      z_number
    end
    z_number
  end
end

