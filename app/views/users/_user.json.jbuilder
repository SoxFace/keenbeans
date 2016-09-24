json.extract! user, :id, :name, :email, :about, :twitter, :linkedin, :facebook, :github, :site, :created_at, :updated_at
json.url user_url(user, format: :json)