require "rails_helper"

RSpec.describe "any page on the site" do 
  describe "as a visitor, when I visit any page" do
# User Story 8
    it "has a link that takes me to the Toy Index" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)

      visit "/boxes"
      expect(page).to have_content("Toy Index Page")

      visit "/boxes/#{box1.id}"
      expect(page).to have_content("Toy Index Page")

      visit "/toys"
      expect(page).to have_content("Toy Index Page")

      visit "/toys/#{toy1.id}"
      expect(page).to have_content("Toy Index Page")

      visit "/boxes/#{box1.id}/toys"
      expect(page).to have_content("Toy Index Page")
    end
# User Story 9
    it "has a link that takes me to the Box Index" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)

      visit "/boxes"
      expect(page).to have_content("Box Index Page")

      visit "/boxes/#{box1.id}"
      expect(page).to have_content("Box Index Page")

      visit "/toys"
      expect(page).to have_content("Box Index Page")

      visit "/toys/#{toy1.id}"
      expect(page).to have_content("Box Index Page")

      visit "/boxes/#{box1.id}/toys"
      expect(page).to have_content("Box Index Page")
    end
  end
end