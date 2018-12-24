class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  accepts_nested_attributes_for :songs
  validates :genre,
              presence: true
  def to_s
    genre
  end
end
