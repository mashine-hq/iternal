require 'spec_helper'

describe HomeController do

  describe "GET 'categories'" do
    it "returns http success" do
      get 'categories'
      response.should be_success
    end
  end

  describe "GET 'companies'" do
    it "returns http success" do
      get 'companies'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

end
