require "factory_girl"

FactoryGirl.define do 

	factory :user do 
		username "test"
		email "me@love.com"
		password "eightchar"
		password_confirmation "eightchar"
	end
end