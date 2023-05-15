require "rails_helper"

RSpec.describe "/boxes", type: :feature do 
  describe "as a visitor, when I visit the boxes index page" do
    # User Story 11, Parent Creation 
    # Then I see a link to create a new Parent record, "New Parent"
    # When I click this link
    # Then I am taken to '/parents/new' where I  see a form for a new parent record
    # When I fill out the form with a new parent's attributes:
    # And I click the button "Create Parent" to submit the form
    # Then a `POST` request is sent to the '/parents' route,
    # a new parent record is created,
    # and I am redirected to the Parent Index page where I see the new Parent displayed.
    it "has a link to create a new Box record" do
      visit "/boxes"

      click_link "New Box"

      expect(current_path).to eq("/boxes/new")
      save_and_open_page
      
      fill_in "Name", with: "Toy Room"
      fill_in "Capacity", with: "200"
      fill_in "Full?", with: "false"
      click_on "Create Box"
      
      expect(current_path).to eq("/boxes")
      expect(page).to have_content("New Box")
    end
  end
end
