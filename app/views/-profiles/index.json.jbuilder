json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :nickname, :description, :category_id
  json.url profile_url(profile, format: :json)
end
