require 'spec_helper'

describe "editable_pages/index" do
  before(:each) do
    assign(:editable_pages, [
      stub_model(EditablePage,
        :window_title => "Window Title",
        :navbar_title => "Navbar Title",
        :navbar_index => 1,
        :content => "MyText"
      ),
      stub_model(EditablePage,
        :window_title => "Window Title",
        :navbar_title => "Navbar Title",
        :navbar_index => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of editable_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Window Title".to_s, :count => 2
    assert_select "tr>td", :text => "Navbar Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
