class Sale < ApplicationRecord
  belongs to :user
  belongs to :book

  attr_reader  :stripe_token
end
