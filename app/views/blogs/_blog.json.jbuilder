json.extract! blog, :id, :start_time, :created_at, :updated_at
json.url blog_url(blog, format: :json)
