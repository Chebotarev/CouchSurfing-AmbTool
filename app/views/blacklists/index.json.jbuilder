json.array!(@blacklists) do |blacklist|
  json.extract! blacklist, :user_id, :user_name, :email
  json.url blacklist_url(blacklist, format: :json)
end
