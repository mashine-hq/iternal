class AddLogoToCompanies < ActiveRecord::Migration
  def change
    add_column :admin_companies, :logo, :string
  end
end
