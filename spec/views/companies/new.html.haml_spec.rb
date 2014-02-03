require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :title => "MyString",
      :phones => "MyString",
      :description => "MyString",
      :category => nil
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_title[name=?]", "company[title]"
      assert_select "input#company_phones[name=?]", "company[phones]"
      assert_select "input#company_description[name=?]", "company[description]"
      assert_select "input#company_category[name=?]", "company[category]"
    end
  end
end
