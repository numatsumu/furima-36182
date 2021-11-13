class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
  VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/

  validates :nickname,            presence: true
  validates :password,            format: { with: VALID_PASSWORD_REGEX }
  validates :first_name,          presence: true, format: { with: VALID_NAME_REGEX }
  validates :last_name,           presence: true, format: { with: VALID_NAME_REGEX }
  validates :first_name_furigana, presence: true, format: { with: VALID_KANA_REGEX }
  validates :last_name_furigana,  presence: true, format: { with: VALID_KANA_REGEX }
  validates :birthday,            presence: true

end
