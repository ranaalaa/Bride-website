json.array!(@posts) do |post|
  json.extract! post, :id, :name, :address, :mobile, :telephone, :email, :social
  json.url post_url(post, format: :json)
end
