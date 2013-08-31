json.array!(@foodstuffs) do |foodstuff|
  json.extract! foodstuff, :menu_id, :food_id, :amount
  json.url foodstuff_url(foodstuff, format: :json)
end
