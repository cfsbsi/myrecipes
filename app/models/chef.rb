class Chef < ActiveRecord::Base
    has_many :recipes
    validates :email, presence: true,  uniqueness: {case_sensitive: false}, format: {with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
    validates :chefname, presence: true, length: {maximum: 40, minimum: 3 }
    
end
