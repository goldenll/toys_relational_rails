require "rails_helper"

RSpec.describe "/toys", type: :feature do 
# User Story 4, Child Show 
  describe "as a visitor when I visit the toys:id page " do 
    it "I see the toy with that id, including attributes" do 
      box1 = Box.create!(name: "Bedroom", capacity: 100, full: false)
      toy1 = box1.toys.create!(name: "fire truck", play_count: 35, age_appropriate: true)
      toy2 = Toy.create!(name: "red ball", play_count: 75, age_appropriate: true, box: box1)

      visit "/toys/#{toy1.id}"

      expect(page).to have_content(toy1.name)
      expect(page).to have_content(toy1.play_count)
      expect(page).to have_content(toy1.age_appropriate)

      expect(page).to_not have_content(toy2.name)
    end
  end
end
