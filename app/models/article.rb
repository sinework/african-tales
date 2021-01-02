class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :title, length: { maximum: 30 }
  validates :text, presence: true, length: { minimum: 10 }
  belongs_to :user, class_name: 'User', foreign_key: :author_id
  has_many :votes, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
  has_one_attached :image
  
  scope :top_voted, -> { order(vote_count: :desc).limit(1).first }
  scope :include_votes, -> { includes(:votes).order(created_at: :desc) }
end
