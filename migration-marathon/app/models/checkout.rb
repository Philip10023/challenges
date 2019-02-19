class Checkout < ActiveRecord::Base
  validates :customer, presence: true

  belongs_to :reader
  belongs_to :book

end
