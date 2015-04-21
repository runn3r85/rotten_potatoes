json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :body, :year, :run_time
  json.url movie_url(movie, format: :json)
end
