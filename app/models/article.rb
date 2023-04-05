class Article < ApplicationRecord
    has_rich_text :description
    has_rich_text :content

    mount_uploader :image, ImageUploader

    validates :title, presence: true
end
