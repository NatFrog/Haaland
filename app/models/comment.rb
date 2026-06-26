class Comment < ApplicationRecord
  belongs_to :post

  validates :body, presence: true, length: { maximum: 2_000 }
  validates :author_name, presence: true, length: { maximum: 100 }

  scope :recent, -> { order(created_at: :asc) }
end
