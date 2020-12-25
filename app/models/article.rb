class Article < ApplicationRecord

    belongs_to :user, class_name: 'User', foreign_key: :Author_id
    has_many :votes, dependent: :destroy
    has_many :tags, dependent: :destroy
    has_many :categories, through: :tags
    has_one_attached :image
end
