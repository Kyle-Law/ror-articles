class User < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :articles, foreign_key: :creator_id
  validates :username, presence: true, uniqueness: true
end
