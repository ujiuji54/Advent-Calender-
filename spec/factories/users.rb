FactoryBot.define do
  factory :user do
    id { 2 }
    email { 'test@test' }
    password { 'password' }
    password_confirmation { 'password' }
    user_name { 'username' }
    created_at { Time.now }
  end
end
