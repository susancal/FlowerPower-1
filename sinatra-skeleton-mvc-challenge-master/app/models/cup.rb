class Cup < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  def self.from_n_days_ago(n)
    where("CAST(created_at AS DATE) = ?", n.days.ago.to_date)
  end
end
