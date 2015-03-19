json.array!(@djs) do |dj|
  json.extract! dj, :id, :Name, :Address, :Phone, :Email
  json.url dj_url(dj, format: :json)
end
