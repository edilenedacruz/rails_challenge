require 'rails_helper'

RSpec.feature "Visitor can create account" do
  it "can create account" do

    visit '/users/new'

    fill_in "Email", with: "me@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create User"

    expect(current_path).to eq(root_path)
  end

  it "must have unique email" do
    user1 = create(:user, email: "me@email.com")

    visit '/users/new'

    fill_in "Email", with: "me@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create User"

    expect(current_path).to_not eq(root_path)
  end

  it "when account is created user see Welcome" do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    expect(page).to have_content("Welcome: #{user.email}")
    expect(page).to have_content("List of all Restaurants")
    expect(page).to_not have_link("Register")
  end

  it "receives an error message if email is not unique" do
    user = create(:user, email: "me@email.com")

    visit '/'

    click_link "Register"

    fill_in "Email", with: "me@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create User"

    expect(page).to have_content("Sorry, but that email has already been taken.")
  end
end
