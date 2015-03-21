json.array!(@djs) do |dj|
  json.extract! dj, :id, :name, :address, :phone, :email
  json.url dj_url(dj, format: :json)
end
