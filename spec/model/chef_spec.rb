require 'rails_helper'

RSpec.describe Chef do
        
	it "shouldn't be valid without a name" do
  	chef = Chef.new(chefname: " ", email: "joah@hot.com") 
    expect(chef.valid?).to be_falsey
	end
  
  it "name should be greater 3 and less than 40 character" do
  	chef = Chef.new(chefname: "Ca", email: "joah@hot.com")
  	expect(chef.valid?).to be_falsey
  end
  
  it "email should be valid" do
  	chef = Chef.new(chefname: "Carol", email: "a.a.a")
  	expect(chef.valid?).to be_falsey
  end
  
  it "email must be present" do
  	chef = Chef.new(chefname: "Carol")
  	expect(chef.valid?).to be_falsey
  end
  
  it "email should be unique" do
  	Chef.create(chefname: "Joah Nak", email: "joah@hot.com")
  	chef = Chef.new(chefname: "Anna Maria", email: "joah@hot.com")
  	expect(chef.valid?).to be_falsey
  end
  
end