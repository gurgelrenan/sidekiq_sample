class FollowupMailing
  def self.process
    # created_at + 5.days
    from = 5.days.ago.beginning_of_day
    to = from.end_of_day
    User.where(created_at: from..to).find_each do |user|
      Mailer.followup(user.id).deliver_later
    end
  end
end