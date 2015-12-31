require 'rails_helper'

RSpec.describe Recipe do
	
	it "recipe should be valid" do
		recipe = FactoryGirl.build_stubbed(:recipe) 
		expect(recipe.valid?).to be_truthy
	end
	
	it "recipe should be not valid" do
		recipe = FactoryGirl.build(:recipe, name: "", summary: "", description: "", chef_id: nil) 
		expect(recipe.valid?).to be_falsey
	end
	
	it "name should be present" do
		recipe = FactoryGirl.build(:recipe, name: " ") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "name size should have more than 5 characters" do
		recipe = FactoryGirl.build(:recipe, name: "Chic") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "name size should less than 100 characters" do
		name = "a" * 101
		recipe = FactoryGirl.build(:recipe, name: name) 
		expect(recipe.valid?).to be_falsey
	end
	
	it "summary should be present" do
		recipe = FactoryGirl.build(:recipe, summary: " ")
		expect(recipe.valid?).to be_falsey
	end
	
	it "summary should be greater than 10" do
		recipe = FactoryGirl.build(:recipe, summary: "Chicken")
		expect(recipe.valid?).to be_falsey
	end
	
	it "description should be present" do
		recipe = FactoryGirl.build(:recipe, description: " ")
		expect(recipe.valid?).to be_falsey
	end
	
	it "description size should be greater than 20" do
		recipe = FactoryGirl.build(:recipe, description: "onion and chicken")
		expect(recipe.valid?).to be_falsey
	end
	
end
