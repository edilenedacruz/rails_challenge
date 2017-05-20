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

    expect(current_page).to eq(login_path)
  end

end
