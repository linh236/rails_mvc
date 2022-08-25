class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true, length: {in: 6..20}
  validates :name, length: {in: 6..50}
  has_many :posts
end
