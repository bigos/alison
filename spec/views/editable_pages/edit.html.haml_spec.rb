require 'spec_helper'

describe "editable_pages/edit" do
  before(:each) do
    @editable_page = assign(:editable_page, stub_model(EditablePage,
      :window_title => "MyString",
      :navbar_title => "MyString",
      :navbar_index => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit editable_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", editable_page_path(@editable_page), "post" do
      assert_select "input#editable_page_window_title[name=?]", "editable_page[window_title]"
      assert_select "input#editable_page_navbar_title[name=?]", "editable_page[navbar_title]"
      assert_select "input#editable_page_navbar_index[name=?]", "editable_page[navbar_index]"
      assert_select "textarea#editable_page_content[name=?]", "editable_page[content]"
    end
  end
end
