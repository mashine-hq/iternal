require 'spec_helper'

describe "admin/categories/new" do
  before(:each) do
    assign(:admin_category, stub_model(Admin::Category,
      :title => "MyString",
      :phone => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new admin_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_categories_path, "post" do
      assert_select "input#admin_category_title[name=?]", "admin_category[title]"
      assert_select "input#admin_category_phone[name=?]", "admin_category[phone]"
      assert_select "input#admin_category_description[name=?]", "admin_category[description]"
    end
  end
end
