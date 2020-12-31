class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true
  has_secure_password
  has_many :articles, foreign_key: 'author_id', class_name: 'Article', dependent: :destroy
  has_many :votes, dependent: :destroy
end
