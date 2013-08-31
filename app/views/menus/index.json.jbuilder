json.array!(@menus) do |menu|
  json.extract! menu, :category_id, :name, :image_url
  json.url menu_url(menu, format: :json)
end
