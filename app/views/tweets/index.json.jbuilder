json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :message, :status, :zombie_id
  json.url tweet_url(tweet, format: :json)
end
