class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  has_many :reviews, through: :adoptions
  validates :name, presence: true
  validates :address, presence: true
  validates :fruit_type, presence: true
  validates :description, presence: true
  validates :price_per_year, presence: true
  validates :quantity_per_year, presence: true
  validates :fruit_type, inclusion: { in: ["Apple", "Apricot", "Cherry", "Chestnut", "Coconut tree", "Fig", "Grapefruit", "Hazel", "Mandarin", "Mango", "Mirabellier", "Mulberry", "Olivier", "Orange", "Pear", "Plum"]}
  validates :description, length: { minimum: 20, maximum: 280 }
  validates :price_per_year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity_per_year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
