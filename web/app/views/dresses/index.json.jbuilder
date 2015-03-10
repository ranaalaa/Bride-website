json.array!(@dresses) do |dress|
  json.extract! dress, :id, :name, :contact
  json.url dress_url(dress, format: :json)
end
