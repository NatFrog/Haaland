class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 200 }
  validates :body, presence: true, length: { maximum: 10_000 }
  validates :author_name, presence: true, length: { maximum: 100 }

  scope :recent, -> { order(created_at: :desc) }
end
