class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :pages, numericality: { greater_than: 0, allow_nil: true }
  validates :rating, inclusion: { in: 0..100, allow_nil: true }

  has_many :categories, through: :categorizations
  has_many :categorizations
end
