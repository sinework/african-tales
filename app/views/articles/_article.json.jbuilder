json.extract! article, :id, :author_id, :title, :text, :image, :vote_count, :created_at, :updated_at
json.url article_url(article, format: :json)
