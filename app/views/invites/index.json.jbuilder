json.array!(@invites) do |invite|
  json.extract! invite, :user_id, :user_name, :email, :answer
  json.url invite_url(invite, format: :json)
end
