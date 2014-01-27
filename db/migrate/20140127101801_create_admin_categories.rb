class CreateAdminCategories < ActiveRecord::Migration
  def change
    create_table :admin_categories do |t|
      t.string :title
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end
