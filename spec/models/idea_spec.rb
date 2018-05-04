require "rails_helper"

RSpec.describe Idea, type: :model do

  describe "associations" do 
	it{ is_expected.to have_many(:comments) }
  end

  describe "validations" do 
  	it{ is_expected.to validate_presence_of :name }
  end

  describe "validations" do
    it{ is_expected.to validate_presence_of :description}
  end



 it "has a name and description" do 
   idea = Idea.create!(name: "My Awesome Idea Name", description: "This describes my idea in detail")

   expect(idea.name).to eq("My Awesome Idea Name")
   expect(idea.description).to eq("This describes my idea in detail")
 end

end