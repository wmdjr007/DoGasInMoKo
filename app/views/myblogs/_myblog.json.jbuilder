json.extract! myblog, :id, :title, :content, :created_at, :updated_at
json.url myblog_url(myblog, format: :json)
