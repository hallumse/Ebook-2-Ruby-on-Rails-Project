class Book < ApplicationRecord
  validates :title, presence: true

  has_many :sales
  has_many :users, through: :sales

  belongs_to :author, class_name: "User", foreign_key: :author_id

  def stripe_amount
    (price * 100).to_i
  end
end
