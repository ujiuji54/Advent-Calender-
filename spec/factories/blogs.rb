FactoryBot.define do
  factory :blog do
    title { 'タイトル' }
    pagelink { 'URL' }
    start_time { Time.new }
  end
end
