json.array!(@links) do |link|
  json.extract! link, :id, :title, :url, :link_id, :vote
  json.url link_url(link, format: :json)
end
