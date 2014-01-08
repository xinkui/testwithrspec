require 'spec_helper'

describe Tweet do

  it "should include tweets" do
      tweet1  = Tweet.new(message: 'yes')
      tweet2 = Tweet.new(message: 'no')
      zombie = Zombie.new(name: 'Ash', tweets:[tweet1, tweet2])
      zombie.tweets.should include(tweet1)
      zombie.tweets.should include(tweet2)
      zombie.should have(2).tweets
  end

  it "changes the number of Zombies" do
    zombie = Zombie.new(name: 'Ash')
    expect {zombie.save}.to change {Zombie.count}.by(1)
  end

  it "raises an error if saved without a name" do
    zombie = Zombie.new
    expect { zombie.save! }.to raise_error(
           ActiveRecord:: RecordInvalid)
  end
end
