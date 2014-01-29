class Admin::CompaniesController < ApplicationController
  before_action :set_admin_company, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: ENV['ADMIN_LOGIN'], password: ENV['ADMIN_PASSWORD'], only: [:edit, :update, :destroy]

  # GET /admin/companies
  # GET /admin/companies.json
  def index
    @admin_companies = Admin::Company.all
  end

  # GET /admin/companies/1
  # GET /admin/companies/1.json
  def show
  end

  # GET /admin/companies/new
  def new
    @admin_company = Admin::Company.new
  end

  # GET /admin/companies/1/edit
  def edit
  end

  # POST /admin/companies
  # POST /admin/companies.json
  def create
    @admin_company = Admin::Company.new(admin_company_params)
    logger.debug(admin_company_params.inspect)
    respond_to do |format|
      if @admin_company.save
        format.html { redirect_to @admin_company, notice: 'Company was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_company }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/companies/1
  # PATCH/PUT /admin/companies/1.json
  def update
    respond_to do |format|
      if @admin_company.update(admin_company_params)
        format.html { redirect_to @admin_company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/companies/1
  # DELETE /admin/companies/1.json
  def destroy
    @admin_company.destroy
    respond_to do |format|
      format.html { redirect_to admin_companies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_company
      @admin_company = Admin::Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_company_params
      params.require(:admin_company).permit(:title, {phone: []}, :description, :category_id, :logo, :logo_cache)
    end
end