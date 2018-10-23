require "rails_helper"

RSpec.describe "Users", type: :system do

  it "the authenticate method for User" do
    User = FactoryBot.Create :User
    Signin_as User
    # first_book = create(:book)
    # second_book = create(:book)

    # visit "/books"
    visit users_sign_in_path

    expect(page).to have_text("Hello, #{user.email}")
    # expect(page).to have_text(second_book.author.name)
   end
