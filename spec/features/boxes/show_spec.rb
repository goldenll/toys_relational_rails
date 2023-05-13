require "rails_helper"

RSpec.describe "the boxes index page" do 

# User Story 1, Parent Index
# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

  it "displays the box name" do 
    box = Box.create!(name: "Bedroom", capacity: 100, full: false)
    box_2 = Box.create!(name: "Living Room", capacity: 50, full: true)
    
    visit "/boxes"

    expect(page).to have_content(box.name)
    expect(page).to have_content(box_2.name)
  end

# User Story 2, Parent Show 
# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

  it "displays the box attributes" do 
    box = Box.create!(name: "Bedroom", capacity: 100, full: false)
    box_2 = Box.create!(name: "Living Room", capacity: 50, full: true)
    
    visit "/boxes/:id"

    expect(page).to have_content(box.name)
    expect(page).to have_content(box.capacity)
    expect(page).to have_content(box.full)
    expect(page).to_not have_content(box_2.name)
  end

end
