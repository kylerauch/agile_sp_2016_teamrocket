json.array!(@decks) do |deck|
  json.extract! deck, :id, :title, :description, :category, :created_by
  json.url deck_url(deck, format: :json)
end
