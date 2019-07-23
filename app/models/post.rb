# frozen_string_literal: true

# Post Model
class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 70 },
                    uniqueness: { case_sensitive: false }
  validates :body,  presence: true,
                    uniqueness: { case_sensitive: false }
  belongs_to :user
  has_many :comments
end
