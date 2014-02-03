require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :title => "MyString",
      :phones => "MyString",
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_title[name=?]", "company[title]"
      assert_select "input#company_phones[name=?]", "company[phones]"
      assert_select "input#company_description[name=?]", "company[description]"
      assert_select "input#company_category[name=?]", "company[category]"
    end
  end
end
