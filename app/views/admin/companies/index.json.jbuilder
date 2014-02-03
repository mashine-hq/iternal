json.array!(@companies) do |company|
  json.extract! company, :id, :title, :phones, :description, :category_id
  json.url company_url(company, format: :json)
end
