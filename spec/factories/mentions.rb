# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mention do
    content "MyText"
    article nil
    user nil
  end
end
