class Anime < ApplicationRecord
  belongs_to :user
  belongs_to :page
  has_many :comments
  validates :name, presence: true, length: {minimum: 3, maximum: 100}
  validates :chapters, presence: true
end
