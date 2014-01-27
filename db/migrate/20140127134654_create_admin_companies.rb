class CreateAdminCompanies < ActiveRecord::Migration
  def change
    create_table :admin_companies do |t|
      t.string :title
      t.string :phone, array: true
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
