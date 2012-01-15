# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  trait :authenticated do
    sequence(:email) {|n| "person#{n}@example.com" }
    password 'password'
  end
  factory :user, :traits => [:authenticated] do

    factory :admin
  end
end
