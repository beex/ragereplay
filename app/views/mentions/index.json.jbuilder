json.array!(@mentions) do |mention|
  json.extract! mention, :id, :content, :article_id, :user_id
  json.url mention_url(mention, format: :json)
end
