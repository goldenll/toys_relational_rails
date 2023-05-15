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
    xit "has a link to create a new Box record" do
      visit "/boxes"

      click_link "New Box"

      expect(current_path).to eq("/boxes/new")

      fill_in "Name", with: "Toy Room"
      click_on "Create Box"

      expect(current_path).to eq("/boxes")
      expect(page).to have_content("New Box")
    end
  end
end
