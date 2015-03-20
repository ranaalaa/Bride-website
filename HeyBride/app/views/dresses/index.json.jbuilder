json.array!(@dresses) do |dress|
  json.extract! dress, :id, :name, :address, :mobile, :email
  json.url dress_url(dress, format: :json)
end
