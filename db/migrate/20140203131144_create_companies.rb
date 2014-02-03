class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :phones, array: true, null: false, default: []
      t.string :description
      t.references :category, index: true

      t.timestamps
    end
  end
end
