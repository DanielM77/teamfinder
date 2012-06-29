FactoryGirl.define do
  factory :user do
    email    "player@mail.com"
    password "geheim"
    password_confirmation "geheim"
  end
end