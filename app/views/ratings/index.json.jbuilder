json.array!(@ratings) do |rating|
  json.extract! rating, :id, :stars, :recipe_id
  json.url rating_url(rating, format: :json)
end
