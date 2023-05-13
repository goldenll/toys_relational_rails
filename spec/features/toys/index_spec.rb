require "rails_helper"

RSpec.describe "/toys", type: :feature do 
  describe "as a visitor, when I visit the toys index page" do
    it "I see each toy and its attributes" do
      visit "/toys"

      expect(page).to have_content(toy1.name)
      expect(page).to have_content(toy1.play_count)
      expect(page).to have_content(toy1.age_appropriate)
      expect(page).to have_content(toy2.name)
      expect(page).to have_content(toy2.play_count)
      expect(page).to have_content(toy2.age_appropriate)
    end
  end
end

