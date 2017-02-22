json.extract! post, :id, :title, :body, :meta_title, :meta_description, :permalink, :slug, :view_count, :created_at, :updated_at
json.url post_url(post, format: :json)