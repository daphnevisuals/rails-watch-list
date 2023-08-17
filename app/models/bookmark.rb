class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :comment, scope: [:list, :movie]
end
