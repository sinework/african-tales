class Article < ApplicationRecord

    belongs_to :user, class_name: 'User', foreign_key: :author_id
    has_many :votes, dependent: :destroy
    has_many :tags, dependent: :destroy
    has_many :categories, through: :tags
    has_one_attached :image
    scope :top_voted, -> { order(vote_count: :desc).limit(1).first }
    scope :articles_by_user, ->(current_user_id) { where('"AuthorId" = ?', current_user_id) }
    scope :search, ->(search) { where('text ILIKE ?', "%#{search}%") }
    scope :include_votes, -> { includes(:votes).order(created_at: :desc) }
  
end
