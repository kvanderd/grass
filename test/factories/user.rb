require "factory_girl"

FactoryGirl.define do 

	factory :user do 
		username "test"
		password "eightchar"
	end
end