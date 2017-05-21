require 'rails_helper'

RSpec.feature "Adds restaurant" do
  it "can see link to add a restaurant" do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    expect(page).to have_content("List of all Restaurants")
    expect(page).to have_link("Add a Restaurant")
  end

  it "can toggle new restaurant form" do
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'
    save_and_open_page
  end

end
