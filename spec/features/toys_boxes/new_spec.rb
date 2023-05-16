require "rails_helper"

RSpec.describe "New ToyBox", type: :feature do 
  describe "as a visitor, when I visit the boxes index page" do
    # User Story 13, Parent Child Creation 

    # a new child object/row is created for that parent,
    # and I am redirected to the Parent Childs Index page where I can see the new child listed
    it "has a link to create a new ToyBox record" do
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      toy3 = Toy.create!(name: "green ball", play_count: 100, age_appropriate: true, box: box2)
      toy4 = Toy.create!(name: "race car", play_count: 57, age_appropriate: true, box: box2)

      visit "/boxes/#{box2.id}/toys"

      click_link "Create Toy"

      expect(current_path).to eq("/boxes/:id/toys/new")

      fill_in "Name", with: "excavator"
      fill_in "play_count", with: "200"
      fill_in "age_appropriate", with: "true"

      click_on "Create Toy"
      
      expect(current_path).to eq("/boxes/:id/toys")
      expect(page).to have_content(box2.name)
      expect(page).to have_content("excavator")
    end
  end
end





