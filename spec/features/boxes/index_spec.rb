require "rails_helper"

RSpec.describe "/boxes", type: :feature do 
# User Story 1, Parent Index
  describe "as a visitor, when I visit the boxes index page" do
    it "I see the name of each toy box" do
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      
      visit "/boxes"

      expect(page).to have_content(box1.name)
      expect(page).to have_content(box2.name)
    end

  # User Story 6, Parent Index sorted by Most Recently Created 
    it "I see that records are ordered by most recently created first and I see when it was created" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      
      visit "/boxes"
#!!!need test for sort!!!!!!!!!!!
      # expect(page).to 
      expect(page).to have_content(box1.created_at)
      expect(page).to have_content(box2.created_at)
    end
  end
end
