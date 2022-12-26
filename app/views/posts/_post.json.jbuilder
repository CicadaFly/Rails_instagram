json.extract! post, :id, :title, :longitude, :lattitude, :user_id, :allow_to_comment, :show_likes, :created_at, :updated_at
json.url post_url(post, format: :json)
