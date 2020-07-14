class User < ApplicationRecord

  def self.high_scores
    users = User.order(score: :desc)
    users[0,5]
  end

end
