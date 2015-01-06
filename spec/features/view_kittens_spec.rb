require "rails_helper"

RSpec.feature "view kittens" do
  scenario "list all kittens" do
    kittens = FactoryGirl.create_list(:kitten, 3)

    visit kittens_path

    kittens.each do |kitten|
      expect(page).to have_content(kitten.name)
    end
  end
end
