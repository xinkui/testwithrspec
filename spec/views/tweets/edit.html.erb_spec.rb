require 'spec_helper'

describe "tweets/edit" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :message => "MyString",
      :status => "MyString",
      :zombie => nil
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tweet_path(@tweet), "post" do
      assert_select "input#tweet_message[name=?]", "tweet[message]"
      assert_select "input#tweet_status[name=?]", "tweet[status]"
      assert_select "input#tweet_zombie[name=?]", "tweet[zombie]"
    end
  end
end
