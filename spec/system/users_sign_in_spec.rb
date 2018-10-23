require "rails_helper"

RSpec.describe "Users", type: :system do

  it "has 200 status code if signed in" do
    User = FactoryBot.Create :User
    Signin_as User
    # first_book = create(:book)
    # second_book = create(:book)

    # visit "/books"
    visit users_sign_in_path

    expect(response).to respond_with 200
    # expect(page).to have_text(second_book.author.name)
   end
