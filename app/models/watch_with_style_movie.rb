class WatchWithStyleMovie < ApplicationRecord
  has_many :watch_with_style_bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end