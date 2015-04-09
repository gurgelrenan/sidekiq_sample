require File.expand_path('../../../config/environment', __FILE__)

module Clockwork
  configure do |config|
    config[:tz] = Rails.configuration.time_zone
  end

  handler do |action|
    SchedulerJob.perform_later(action)
  end

  every(10.seconds, "followup_email")
end