require 'rails_helper'

RSpec.feature "Visitor" do
  it "can visit account creating page" do

    visit '/'

    expect(current_path).to eq(root_path)
  end

  it "can see link to register for an account" do

    visit '/'

    expect(page).to have_link("Register")
  end

  it "it's taken to a sign up page" do

    visit '/'

    click_link("Register")

    expect(current_path).to eq(new_user_path)
    expect(current_page).to have_content("Create a new account")
    # expect(current_page).to have_content("Email")
    expect(current_page).to have_content("Password")
    expect(current_page).to have_content("Password Confirmation")
  end
end
