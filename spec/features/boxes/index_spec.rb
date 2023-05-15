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
      # save_and_open_page
    end

    # User Story 11, Parent Creation 
    # Then I see a link to create a new Parent record, "New Parent"
    # When I click this link
    # Then I am taken to '/parents/new' where I  see a form for a new parent record
    # When I fill out the form with a new parent's attributes:
    # And I click the button "Create Parent" to submit the form
    # Then a `POST` request is sent to the '/parents' route,
    # a new parent record is created,
    # and I am redirected to the Parent Index page where I see the new Parent displayed.
    it "has a link to create a new Box record, "New Box" which takes me to a form" do
      
    end
  end
end
