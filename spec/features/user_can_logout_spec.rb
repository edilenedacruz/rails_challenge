require 'rails_helper'

RSpec.feature "User can logout" do
  it "can logout" do
    user = create(:user)

    visit '/'

    expect(page).to have_link("Login")

    click_link("Login")

    expect(current_path).to eq(login_path)

    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Login"

    expect(page).to have_content("Welcome: #{user.email}")
    expect(page).to have_link("Logout")
    expect(page).to_not have_link("Login")

    click_link("Logout")
    expect(page).to have_content("Register")
    expect(page).to have_content("Login")
    expect
  end
end
