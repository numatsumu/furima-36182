FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 10, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    nickname              { Faker::Name.initials(number: 2) }
    last_name             { '山田' }
    first_name            { '太郎' }
    last_name_furigana    { 'ヤマダ' }
    first_name_furigana   { 'タロウ' }
    birthday              { Faker::Date.backward }
  end
end
