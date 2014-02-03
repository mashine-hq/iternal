require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :title => "Title",
      :phones => "Phones",
      :description => "Description",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Phones/)
    rendered.should match(/Description/)
    rendered.should match(//)
  end
end
