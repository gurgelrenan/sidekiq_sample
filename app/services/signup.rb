class Signup
  def self.process(user_id)
    new(user_id).process
  end

  attr_reader :user_id

  def initialize(user_id)
    @user_id = user_id
  end

  def process
    send_welcome_email
    schedule_followup_email
  end

  private

  def send_welcome_email
    Mailer.welcome(@user_id).deliver_later
  end

  def schedule_followup_email
    Mailer.followup(@user_id).deliver_later(wait: 5.days) 
  end
  
  
end