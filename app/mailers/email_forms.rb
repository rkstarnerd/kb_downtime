class EmailForms < ActionMailer::Base
  default to: "tnwdissem_test@mailinator.com"

  def email_form(dt_cr, user)
    @user = user
    @dt_cr = dt_cr
    mail(from:     "#{@user.username}", 
         subject: 'Downtime Form - VDN: #{@dt_cr.vdn}, #{z_number(@dt_cr.id)}')
  end
end
