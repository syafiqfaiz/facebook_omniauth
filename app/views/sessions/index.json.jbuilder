json.array!(@sessions) do |session|
  json.extract! session, :id, :new, :omniauth
  json.url session_url(session, format: :json)
end
