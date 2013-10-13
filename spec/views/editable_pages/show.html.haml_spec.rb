require 'spec_helper'

describe "editable_pages/show" do
  before(:each) do
    @editable_page = assign(:editable_page, stub_model(EditablePage,
      :window_title => "Window Title",
      :navbar_title => "Navbar Title",
      :navbar_index => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Window Title/)
    rendered.should match(/Navbar Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
