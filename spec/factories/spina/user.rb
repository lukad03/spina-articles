FactoryBot.define do
  factory :user, class: Spina::User do
    name  'John Doe'
    email 'john@doe.com'
    password 'password'
    password_confirmation { password }
    admin true
  end
end