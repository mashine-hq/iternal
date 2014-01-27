require 'spec_helper'

describe "admin/categories/edit" do
  before(:each) do
    @admin_category = assign(:admin_category, stub_model(Admin::Category,
      :title => "MyString",
      :phone => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit admin_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_category_path(@admin_category), "post" do
      assert_select "input#admin_category_title[name=?]", "admin_category[title]"
      assert_select "input#admin_category_phone[name=?]", "admin_category[phone]"
      assert_select "input#admin_category_description[name=?]", "admin_category[description]"
    end
  end
end
