class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_charge
  belongs_to :prefecture
  belongs_to :days_to_ship
  belongs_to :user

  has_one_attached :image

  validates :product_name,       presence: true
  validates :description,        presence: true
  validates :category_id,        presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :condition_id,       presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_charge_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id,      presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :days_to_ship_id,    presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :price,              presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 300,
                                                                 less_than_or_equal_to: 9_999_999 }, format: { with: /\A[0-9]+\z/ }
  validates :image,              presence: true
end
