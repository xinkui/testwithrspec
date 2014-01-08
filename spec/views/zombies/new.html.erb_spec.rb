require 'spec_helper'

describe "zombies/new" do
  before(:each) do
    assign(:zombie, stub_model(Zombie,
      :name => "MyString",
      :graveyard => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new zombie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", zombies_path, "post" do
      assert_select "input#zombie_name[name=?]", "zombie[name]"
      assert_select "input#zombie_graveyard[name=?]", "zombie[graveyard]"
      assert_select "input#zombie_status[name=?]", "zombie[status]"
    end
  end
end
