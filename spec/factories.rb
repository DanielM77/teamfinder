FactoryGirl.define do
  factory :user do
    email    "user@mail.com"
    password "geheim"
    password_confirmation "geheim"
  end
end