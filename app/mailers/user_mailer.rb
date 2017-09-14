class UserMailer < ApplicationMailer
    default from: "ijsimon@sbcglobal.net"
    
   def new_user(user)
    @user = user
    mail(to: user.email, subject: "Welcome to Blocipedia!")
  end
end
