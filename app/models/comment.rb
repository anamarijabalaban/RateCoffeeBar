class Comment < ApplicationRecord
  belongs_to :coffee_bar
  validates :body, presence: true
end
