json.array!(@admin_companies) do |admin_company|
  json.extract! admin_company, :id, :title, :phone, :description, :category_id
  json.url admin_company_url(admin_company, format: :json)
end
