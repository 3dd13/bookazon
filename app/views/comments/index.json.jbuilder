json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :admin_id, :book_id
  json.url comment_url(comment, format: :json)
end
