class WatchWithStyleList < ApplicationRecord
  has_many :watch_with_style_bookmarks, dependent: :destroy
  has_many :watch_with_style_movies, through: :watch_with_style_bookmarks
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
