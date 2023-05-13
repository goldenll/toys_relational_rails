require "rails_helper"

# User Story 2, Parent Show 
# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

RSpec.describe "the /boxes/:id page" do 
  describe "as a visitor, when I visit the boxes/:id page" do
    it "displays the box attributes" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      
      visit "/boxes/:id"
  
      expect(page).to have_content(box1.name)
      expect(page).to have_content(box1.capacity)
      expect(page).to have_content(box1.full)
      expect(page).to_not have_content(box2.name)
    end
  end
end
