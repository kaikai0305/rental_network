class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy

  def active_for_authentication?
    super && (is_deleted == false)
  end

  validates :sur_name, presence: true
  validates :first_name, presence: true
  validates :sur_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :address, presence: true
  validates :post_code, presence: true
  validates :phone_number, presence: true
end
