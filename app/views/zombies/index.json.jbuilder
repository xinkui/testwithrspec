json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :graveyard, :status
  json.url zombie_url(zombie, format: :json)
end
