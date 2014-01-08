require 'spec_helper'

describe Zombie do
  let(:zombie) { Zombie.new(tweets: [tweet]) }
  let(:tweet) { Tweet.new(message: 'getdown') }
  subject {zombie}


  #it "is invalid without a name"  do
  #  #zombie = Zombie.new
  #  #zombie.should_not be_valid
  #  should_not be_valid
  #end
  it {should_not be_valid}

  its(:tweets) {should include(tweet)}

  it "has a name that matches 'Ash Clone'" do
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone \d/)
  end

  #it 'responds to name' do
  #  should respond_to(:name)
  #end
  it { should respond_to(:name)}

  #its(:name) {should == 'getdown'}

end
