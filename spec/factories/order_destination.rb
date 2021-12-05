FactoryBot.define do
  factory :order_destination do
    number        { '4242424242424242' }
    exp_month     { '12' }
    exp_year      { '24' }
    cvc           { '123' }
    postal_code   { '123-4567' }
    prefecture_id { 1 }
    municipality  { '東京都' }
    house_number  { '1-1' }
    building_name { '東京ハイツ' }
    phone_number  { '01234567890' }
    token         { 'tok_abcdefghijk00000000000000000' }
  end
end
