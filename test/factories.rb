require "away/models"
require "helpers/sequel"

FactoryGirl.define do
  factory :extra do
    name "My Extra"
  end

  factory :hotel do
    name "My Hotel"
  end

  factory :hotel_with_extras, class: Hotel do
    name "My Hotel with Extras"
    after(:create) do |hotel, evaluator|
      create_list(:extra, 3, hotel: hotel)
    end
  end
end
