json.array!(@suits) do |suit|
  json.extract! suit, :id, :name, :address, :mobile, :email
  json.url suit_url(suit, format: :json)
end
