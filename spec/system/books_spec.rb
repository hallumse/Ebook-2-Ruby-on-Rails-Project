require "rails_helper"

RSpec.describe "Books", type: :system do
  it "has an index page of all books" do
    first_book = create(:book)
    second_book = create(:book)

    # visit "/books"
    visit books_path

    expect(page).to have_text(first_book.author.name)
    expect(page).to have_text(second_book.author.name)
  end
end
