class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, length: { minimum: 3, maximum: 114 }
end
