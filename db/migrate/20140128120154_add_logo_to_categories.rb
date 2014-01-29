class AddLogoToCategories < ActiveRecord::Migration
  def change
    add_column :admin_categories, :logo, :string
  end
end
