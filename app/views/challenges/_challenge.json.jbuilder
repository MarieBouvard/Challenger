json.extract! challenge, :id, :title, :description, :expires_at, :points, :created_at, :updated_at
json.url challenge_url(challenge, format: :json)
