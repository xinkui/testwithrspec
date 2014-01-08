require 'spec_helper'

describe "zombies/show" do
  before(:each) do
    @zombie = assign(:zombie, stub_model(Zombie,
      :name => "Name",
      :graveyard => "Graveyard",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Graveyard/)
    rendered.should match(/Status/)
  end
end
