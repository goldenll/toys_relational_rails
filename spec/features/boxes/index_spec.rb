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
  end
end