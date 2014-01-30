class HomeController < ApplicationController
  layout "home"
  def index_categories
    @categories = Admin::Category.all
  end

  def show_category
    @companies = Admin::Category.find(params[:id]).companies
  end

  def show_company
    @company = Admin::Company.find(params[:id])
  end
end
