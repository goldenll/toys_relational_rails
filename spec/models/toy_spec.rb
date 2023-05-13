require "rails_helper"

RSpec.describe Toy, type: :model do 
  describe "relationships" do
    it { should belong_to :box }
  end
end
