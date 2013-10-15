FactoryGirl.define do
	factory :user do
		sequence(:name) {|n| "Person #{n}" }
		sequence(:email) {|n| "Person_#{n}@example.com" }
		password	"password"
		password_confirmation "password"
		year 1

		factory :admin do
			admin true
		end
	end

	factory :hourlog do
		h_study "5"
		h_sleep "8"
		user_id user
	end
end
