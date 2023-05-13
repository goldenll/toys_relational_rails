require "rails_helper"

RSpec.describe Box, type: :model do 
  describe "relationships" do
    it { should have_many :toys }
  end
end

# bundle exec rspec 

