class Book < ApplicationRecord
  validates :title, presence: true

  has_many :author_books
  has_many :authors, through: :author_books

  has_many :sales
  has_many :users, through: :sales

  def stripe_amount
    (price * 100).to_i
  end
end
