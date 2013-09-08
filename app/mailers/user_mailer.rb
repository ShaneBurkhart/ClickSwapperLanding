class UserMailer < ActionMailer::Base
  default from: "welcome@clickswapper.com"

  def welcome_email(user)
    @count = User.count
    @user = user
    mail(to: "admin@clickswapper.com", subject: "#{@user.email} - Another User Signed Up",
        template_name: "user_signed_up").deliver
    mail(to: @user.email, subject: 'Welcome to ClickSwapper!')
  end
end
