class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user

  scope :created_at, -> {order(created_at: :desc)}
end
