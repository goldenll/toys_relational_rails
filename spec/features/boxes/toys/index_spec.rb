# require "rails_helper"

# RSpec.describe "/toys", type: :feature do 
# # User Story 5, Parent Children Index 
#   describe "as a visitor, when I visit the boxes/toys index page" do
#     xit "I see each Toy that is associated with that Box with each Toy's attributes" do
#       box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
#       toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
#       toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)

#       visit "/boxes/#{box1.id}/toys"

#       expect(page).to have_content(box1.name)

#       expect(page).to have_content(toy1.name)
#       expect(page).to have_content(toy1.play_count)
#       expect(page).to have_content(toy1.age_appropriate)

#       expect(page).to have_content(toy2.name)
#       expect(page).to have_content(toy2.play_count)
#       expect(page).to have_content(toy2.age_appropriate)
#     end
#   end
# end
