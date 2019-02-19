class Category < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :books, through: :categorizations
  has_many :categorizations
end
