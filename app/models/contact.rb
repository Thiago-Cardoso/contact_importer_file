class Contact < ApplicationRecord
  belongs_to :user
  validates :name, :date_of_birth, :phone, :address, :credit_card, :franchise, :email, :user, presence: true
  validates :name, format: { with: /\A[[:alnum:] -]+\z/ }
  validates :credit_card, credit_card_number: {brands: [:amex, :diners, :discover, :jcb, :mastercard, :visa]}
end
