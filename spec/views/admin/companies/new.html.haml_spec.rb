require 'spec_helper'

describe "admin/companies/new" do
  before(:each) do
    assign(:admin_company, stub_model(Admin::Company,
      :title => "MyString",
      :phone => "MyString",
      :description => "MyString",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new admin_company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_companies_path, "post" do
      assert_select "input#admin_company_title[name=?]", "admin_company[title]"
      assert_select "input#admin_company_phone[name=?]", "admin_company[phone]"
      assert_select "input#admin_company_description[name=?]", "admin_company[description]"
      assert_select "input#admin_company_category_id[name=?]", "admin_company[category_id]"
    end
  end
end
