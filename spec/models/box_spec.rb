require "rails_helper"

describe Box, type: :model do 
  describe "validations" do
    it { should have_many(:toys) }
  end

# # User Story 1, Parent Index
# # For each parent table
# # As a visitor
# # When I visit '/parents'
# # Then I see the name of each parent record in the system

#   it "displays the box name" do 
#     box = Box.create!(name: "Bedroom", capacity: 100, full: false)
#     box_2 = Box.create!(name: "Living Room", capacity: 50, full: true)
#     visit "/boxes"

#     expect(page).to have_content(box.name)
#     expect(page).to have_content(box_2.name)
#   end
end
