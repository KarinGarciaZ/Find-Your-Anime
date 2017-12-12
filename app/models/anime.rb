class Anime < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3, maximum: 100}
  validates :chapters, presence: true
end
