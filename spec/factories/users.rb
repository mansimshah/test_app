FactoryGirl.define do
  factory :user do
    email       { FFaker::Internet.email }
    password    { FFaker::DizzleIpsum.words(4).join('!').first(20) }
    password_confirmation { password }
    first_name "User_One"
    last_name "User_testing"
  end
end
