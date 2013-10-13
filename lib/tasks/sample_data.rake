namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User", email: "example@example.com", password: "password", password_confirmation: "password", year: "1")
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@example.com"
			password = "password"
			year = "#{rand(1..2)}"
			User.create!(name: name, email: email, password: password, password_confirmation: password, year: year)
		end
	end
end
