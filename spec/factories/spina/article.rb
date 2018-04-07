FactoryBot.define do
  factory :article, class: Spina::Article do
    sequence(:title) { |n| "Article Title #{n}" }
  end
end