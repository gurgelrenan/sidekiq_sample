class SignupJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    Signup.process(user_id )
  end
end
