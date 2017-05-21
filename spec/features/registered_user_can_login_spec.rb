require 'rails_helper'

RSpec.feature "Registered User can login" do
  it "can see login link" do

    visit '/'

    expect(page).to have_link("Login")
  end

  it "sees login page" do
    user = create(:user)
    visit '/'

    click_link "Login"

    expect(current_path).to eq(login_path)
  end

  it "can sign in with previous information created" do
    user = create(:user)

    visit '/'

    click_link "Login"

    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "#{user.password}"
    click_button "Login"

    expect(current_path).to eq(root_path)
  end

  it "receives an error message if credentials are invalid" do
    user = create(:user)

    visit '/'

    click_link "Login"

    fill_in "Email", with: "#{user.email}"
    fill_in "Password", with: "wrong password"
    click_button "Login"

    expect(current_path).to eq(login_path)
    expect(page).to have_content("Your login information is incorrect.")
  end

end
