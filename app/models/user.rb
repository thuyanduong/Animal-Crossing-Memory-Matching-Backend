class User < ApplicationRecord

  def self.high_scores
    users = User.order(score: :desc)
    users[0,10]
  end

end
