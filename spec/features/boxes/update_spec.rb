require "rails_helper"

RSpec.describe "Update Box", type: :feature do 
  describe "as a visitor, when I visit the boxes show page" do
# User Story 12, Parent Update 
    xit "has a link to update Box record" do
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      
      visit "/boxes/#{box2.id}"

      click_link "Update Box"

      # expect(current_path).to eq("/boxes/#{box2.id}/edit")

      fill_in "Name", with: "Living Room"
      fill_in "Capacity", with: "55"
      fill_in "Full?", with: "true"
      click_on "Update Box"
      
      expect(current_path).to eq("/boxes/#{box2.id}")
      expect(page).to have_content("Updated Box")
    end
  end
end