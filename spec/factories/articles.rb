FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Article Title#{n}"}
    sequence(:text) { |n| "Article Content#{n}"}
  end
end