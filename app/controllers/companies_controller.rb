class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def show
  end


  private
    def set_company
      @company = Company.find(params[:id])
    end

end
