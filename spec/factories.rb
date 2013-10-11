FactoryGirl.define do
	factory :user do
		name		"Zach Strickland"
		email		"Zach@example.com"
		password	"password"
		password_confirmation "password"
	end
end