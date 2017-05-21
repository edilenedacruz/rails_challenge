require 'rails_helper'

RSpec.feature "Adds restaurant" do
  it "can see link to add a restaurant" do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    expect(page).to have_content("List of all Restaurants")
    expect(page).to have_link("Add a Restaurant")
  end

  it "can see new restaurant form" do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    click_link("Add a Restaurant")

    fill_in "Name", with: "Texas de Brazil"
    fill_in "Cuisine", with: "Brazilian"
    fill_in "City", with: "Denver"
    fill_in "State", with: "CO"
    fill_in "Zip", with: "80201"

    click_button "Add restaurant"
    save_and_open_page
    expect(page).to have_content("Texas de Brazil")
  end

end
