class SchedulerJob < ActiveJob::Base
  queue_as :default

  def perform(action)
    public_send(action)
  end

  def followup_email
    FollowupMailing.process
  end
end
