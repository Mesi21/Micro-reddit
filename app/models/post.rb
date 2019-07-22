class Post < ApplicationRecord
    validates :title,  presence: true, length: { maximum: 70 },
                uniqueness: { case_sensitive: false }
    validates :body,  presence: true,
                uniqueness: { case_sensitive: false }
    belongs_to :user
end
