json.array!(@identities) do |identity|
  json.extract! identity, :id, :name, :email, :password_digest
  json.url identity_url(identity, format: :json)
end
