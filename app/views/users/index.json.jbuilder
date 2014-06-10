json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :name, :surname, :email, :pro
  json.url user_url(user, format: :json)
end
