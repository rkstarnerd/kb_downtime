module ApplicationHelper
  def z_number(dt_cr_id)
    z_number = "Z#{dt_cr_id.to_s}"
    if dt_cr_id.to_s.size < 6
      z_number << "0" until z_number.size == 7
    else
      z_number
    end
    z_number
  end
end

