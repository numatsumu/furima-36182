FactoryBot.define do
  factory :item do
    product_name         { 'アイパッド' }
    description          { '未使用でまだ開封していません。' }
    category_id          { '2' }
    condition_id         { '2' }
    shipping_charge_id   { '2' }
    prefecture_id        { '2' }
    days_to_ship_id      { '2' }
    price                { '3000' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/memorial.png'), filename: 'memorial.png')
    end
  end
end
