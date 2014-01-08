class Zombie < ActiveRecord::Base
  has_many :tweets

  validates :name, presence: true

  def zombie_summary
    "#{name} lives in #{graveyard} and has #{self.tweets.size} tweets"
  end
end
