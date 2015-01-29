factory :category do
  sequence(:name) { |n| "hot beverages#{n}" }
  image "default.jpg"
end


factory :item do
  title "hot cocao"
  price 800
  description "European and obnoxious"

  before(:create) do |item|
    item.categories = create_list(:category, 3, name: "hot drinks")
  end
end
