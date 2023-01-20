class WatchWithStyleBookmark < ApplicationRecord
  belongs_to :watch_with_style_movie
  belongs_to :watch_with_style_list
  validates :watch_with_style_movie, uniqueness: { scope: :watch_with_style_list }
  validates :comment, length: { minimum: 6 }
end
