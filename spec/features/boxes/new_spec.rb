require "rails_helper"

RSpec.describe "/boxes", type: :feature do 
  describe "as a visitor, when I visit the boxes index page" do
    # User Story 11, Parent Creation 
    it "has a link to create a new Box record" do
      visit "/boxes"

      click_link "New Box"

      expect(current_path).to eq("/boxes/new")

      fill_in "Name", with: "Toy Room"
      fill_in "Capacity", with: "200"
      fill_in "Full?", with: "false"
      click_on "Create Box"
      
      expect(current_path).to eq("/boxes")
      expect(page).to have_content("New Box")
    end
  end
end
