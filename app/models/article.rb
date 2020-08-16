class Article < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :category
  has_many :votes, dependent: :destroy
  mount_uploader :image, ImageUploader

  validates :title, :text, :image, :category_id, presence: true
  validates :title, length: { minimum: 5 }
  validates :text, length: { minimum: 10 }

  scope :recent_articles, -> { order(created_at: :desc) }

  def self.best_voted_article
    Article.all.max_by { |a| a.votes.count }
  end
end
