class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def show
    @category = @company.category
  end


  private
  def set_company
    @company = Company.find(params[:id])
  end

end
