json.array!(@users) do |user|
  json.extract! user, :name, :email, :privilege_id
  json.url user_url(user, format: :json)
end