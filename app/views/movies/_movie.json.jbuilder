json.extract! movie, :id, :title, :description, :duration, :director_id_id, :release_date, :address_id_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
