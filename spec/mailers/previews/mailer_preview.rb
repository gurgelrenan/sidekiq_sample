# Preview all emails at http://localhost:3000/rails/mailers/mailer
class MailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mailer/welcome
  def welcome
    Mailer.welcome
  end

  # Preview this email at http://localhost:3000/rails/mailers/mailer/followup
  def followup
    Mailer.followup
  end

end
