require 'rails_helper'

RSpec.describe Chef do
        
	it "is invalid without a name" do
  	chef = FactoryGirl.build(:chef , chefname: " ") 
    expect(chef.valid?).to be_falsey
	end
  
  it "name should be greater 3 and less than 40 character" do
  	chef = FactoryGirl.build(:chef , chefname: "Ca")
  	expect(chef.valid?).to be_falsey
  end
  
  it "email should be valid" do
  	chef = FactoryGirl.build(:chef , email: "a.a.a")
  	expect(chef.valid?).to be_falsey
  end
  
  it "email must be present" do
  	chef = FactoryGirl.build(:chef , email: nil)
  	expect(chef.valid?).to be_falsey
  end
  
  it "email should be unique" do
  	FactoryGirl.create(:chef)
  	chef = FactoryGirl.build(:chef)
  	expect(chef.valid?).to be_falsey
  end
  
end