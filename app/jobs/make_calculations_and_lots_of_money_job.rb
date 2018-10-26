class MakeCalculationsAndLotsOfMoneyJob < ApplicationJob
  queue_as :default

  def perform(book)
    # Do something later
    if new_popularity > tenth_most_popular_book
      new_price = book.price * 1.15
    else
      new_price = book.price - (book.price * 0.15)
  end
end
