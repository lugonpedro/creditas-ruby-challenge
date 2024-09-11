class Customer < ApplicationRecord
  has_many :loans

  validates :name, presence: true
  validates :cpf, presence: true, length: { in: 11..11 }
  validates :age, presence: true
  validates :location, presence: true
  validates :income, presence: true
end
