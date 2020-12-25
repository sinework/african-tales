class Category < ApplicationRecord
    
    has_many :articles
    has_many :tags
end
