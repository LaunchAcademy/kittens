require "rails_helper"

RSpec.feature "add kitten" do
  scenario "submit form with valid photo" do
    visit "/kittens/new"

    fill_in "Name", with: "Mittens"
    attach_file "Image", "spec/data/two-face-kitten.jpg"
    click_button "Add Kitten"

    expect(page).to have_content("Meow.")
    expect(page).to have_content("Mittens")
    expect(page).to have_selector("img[alt=\"Mittens\"]")
  end
end
