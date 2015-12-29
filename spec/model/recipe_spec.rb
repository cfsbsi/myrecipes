require 'rails_helper'

RSpec.describe Recipe do
	
	it "recipe should be valid" do
		recipe = Recipe.new( name: "chicken parm", summary: "this is the best chicken parm recipe ever",
		description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes") 
		expect(recipe.valid?).to be_truthy
	end
	
	it "recipe should be not valid" do
		recipe = Recipe.new 
		expect(recipe.valid?).to be_falsey
	end
	
	it "name should be present" do
		recipe = Recipe.new(name: " ", summary: "this is the best chicken parm recipe ever",
		description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "name size should between 5 and 100 characters" do
		recipe = Recipe.new(name: "Chic", summary: "this is the best chicken parm recipe ever",
		description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "summary should be present" do
		recipe = Recipe.new(name: "Chicken Cesar", summary: " ",
		description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "summary should be grater than 10" do
		recipe = Recipe.new(name: "Chicken Cesar", summary: "Chicken",
		description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes") 
		expect(recipe.valid?).to be_falsey
	end
	
	it "description should be present" do
		recipe = Recipe.new(name: "Chicken Cesar", summary: "this is the best chicken parm recipe ever",
		description: " ")
		expect(recipe.valid?).to be_falsey
	end
	
	it "description size should be greater than 20" do
		recipe = Recipe.new(name: "Chicken Cesar", summary: "this is the best chicken parm recipe ever",
		description: "onion and chicken")
		expect(recipe.valid?).to be_falsey
	end
end
