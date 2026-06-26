class Photo < ApplicationRecord
  has_one_attached :image

  validates :caption, presence: true, length: { maximum: 500 }
  validates :author_name, presence: true, length: { maximum: 100 }
  validates :image, presence: true
  validate :acceptable_image

  scope :recent, -> { order(created_at: :desc) }

  private

  def acceptable_image
    return unless image.attached?

    unless image.blob.byte_size <= 10.megabytes
      errors.add(:image, "must be less than 10 MB")
    end

    acceptable_types = ["image/jpeg", "image/png", "image/webp", "image/gif"]
    unless acceptable_types.include?(image.blob.content_type)
      errors.add(:image, "must be a JPEG, PNG, WebP, or GIF")
    end
  end
end
