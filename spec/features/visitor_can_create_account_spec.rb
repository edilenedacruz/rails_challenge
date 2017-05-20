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
end
