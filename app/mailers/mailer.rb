class Mailer < ApplicationMailer

  def welcome(user_id)
    @user = User.find(user_id)
    mail to: @user.email, subject: __method__
  end

  def followup(user_id)
    @user = User.find(user_id)
    mail to: @user.email, subject: __method__
  end
end
