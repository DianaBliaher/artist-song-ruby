class Song < ApplicationRecord
  belongs_to :artist
  accepts_nested_attributes_for :artist
  validates :title,
              presence: true
  def to_s
    title
  end
end
