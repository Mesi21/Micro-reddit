# frozen_string_literal: true

# Comment model
class Comment < ApplicationRecord
  validates :body, presence: true,
                   uniqueness: { case_sensitive: false }
  belongs_to :user
  belongs_to :post
end
