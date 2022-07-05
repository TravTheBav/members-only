class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { in: 3..40 }
  validates :body, length: { in: 3..400 }
end
