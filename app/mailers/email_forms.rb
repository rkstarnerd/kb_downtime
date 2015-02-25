class EmailForms < ActionMailer::Base
  default to: "gemille@gmail.com"

  def send_form(user, dt_cr)
    @user = user
    @dt_cr = dt_cr
    mail ( :from => @user.username,
      :subject => 'Downtime Form - VDN: #{@dt_cr.vdn}, #{z_number(@dt_cr.id)}')
  end
end
