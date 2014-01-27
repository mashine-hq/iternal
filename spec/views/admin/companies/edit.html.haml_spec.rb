require 'spec_helper'

describe "admin/companies/edit" do
  before(:each) do
    @admin_company = assign(:admin_company, stub_model(Admin::Company,
      :title => "MyString",
      :phone => "MyString",
      :description => "MyString",
      :category_id => 1
    ))
  end

  it "renders the edit admin_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_company_path(@admin_company), "post" do
      assert_select "input#admin_company_title[name=?]", "admin_company[title]"
      assert_select "input#admin_company_phone[name=?]", "admin_company[phone]"
      assert_select "input#admin_company_description[name=?]", "admin_company[description]"
      assert_select "input#admin_company_category_id[name=?]", "admin_company[category_id]"
    end
  end
end
