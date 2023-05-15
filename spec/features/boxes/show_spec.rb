require "rails_helper"

RSpec.describe "the /boxes/:id page" do 
  describe "as a visitor, when I visit the boxes/:id page" do
    # User Story 2, Parent Show 
    it "displays the box attributes" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      
      visit "/boxes/#{box1.id}"
      
      expect(page).to have_content(box1.name)
      expect(page).to have_content(box1.capacity)
      expect(page).to have_content(box1.full)
      expect(page).to_not have_content(box2.name)
      
    end

    # User Story 7, Parent Child Count
    it "displays a count of the number of toys associated with this box" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)
      toy3 = Toy.create!(name: "green ball", play_count: 100, age_appropriate: true, box: box2)
      toy4 = Toy.create!(name: "race car", play_count: 57, age_appropriate: true, box: box2)

      visit "/boxes/#{box1.id}"
      
      expect(page).to have_content("Count: 2")
    end

    # User Story 10, Parent Child Index Link
    # Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')
    it "has a link that takes me to that box's toy page" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      box2 = Box.create!(name: "Living Room", capacity: 50, full: true)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)
      toy3 = Toy.create!(name: "green ball", play_count: 100, age_appropriate: true, box: box2)
      toy4 = Toy.create!(name: "race car", play_count: 57, age_appropriate: true, box: box2)

      visit "/boxes/#{box1.id}"
      expect(page).to have_content("Toybox Index Page")
    end
  end
end
