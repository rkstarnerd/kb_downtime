module ApplicationHelper
  def z_number(dt_cr_id)
    form_number = dt_cr_id.to_s
    z_number = "Z#{form_number}"
    if form_number.size < 6
      form_number.prepend "0" until form_number.size == 6
      z_number = "Z#{form_number}"
    else
      z_number
    end
    z_number
  end

  def time_of_article(dt)
    # if dt.nil?
    #   dt
    dt = dt.strftime("%A, %m/%d/%Y at %l:%M %P %Z")
  end
end

