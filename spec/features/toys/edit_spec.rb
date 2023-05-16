require "rails_helper"

RSpec.describe "Update Toy", type: :feature do 
  describe "as a visitor, when I visit the toy show page" do
    # User Story 14, Child Update 
    it "can update toys" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)

      visit "/toys/#{toy1.id}"

      click_link "Update Toy"

      expect(current_path).to eq("/toys/#{toy1.id}/edit")

      fill_in "Name", with: "Fire Tuck"
      fill_in "Play Count", with: "52"
      check 
      click_button "Update Toy"

      expect(current_path).to eq("/toys/#{toy1.id}")
      expect(page).to have_content("52")
      expect(page).to_not have_content("red ball")
    end
  end
end
