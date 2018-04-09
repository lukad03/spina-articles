FactoryBot.define do
  factory :article, class: Spina::Articles::Article do
    author "John Doe"
    body "Cool beans."
    sequence(:title) { |n| "Article Title #{n}" }
    publish_date Date.today
  end
end