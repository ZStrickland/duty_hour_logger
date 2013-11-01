namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(first_name: "Example", last_name: "User", email: "example@louisville.edu", password: "password", password_confirmation: "password", year: "1", admin: true)
		User.create!(first_name: "Zach", last_name: "Strickland", email: "z0stri01@louisville.edu", password: "password", password_confirmation: "password", year: "2", admin: true)
		99.times do |n|
			first_name = Faker::Name.first_name
			last_name = Faker::Name.last_name
			email = "example-#{n+1}@louisville.edu"
			password = "password"
			year = "#{rand(1..2)}"
			User.create!(first_name: first_name, last_name: last_name, email: email, password: password, password_confirmation: password, year: year)
		end

		users = User.all(limit: 5)
		5.times do |n|
			logdate = "10/#{n+1}/2013"
			h_study = "#{rand(1..12)}"
			h_sleep = "#{rand(3..10)}"
			h_lecture = "#{rand(0..4)}"
			h_mandatory = "#{rand(0..4)}"
			h_extracurriculars = "#{rand(0..2)}"
			meal = "#{rand(1..3)}"
			anxious = "#{rand(0..1)}"
			sad = "#{rand(0..1)}"
			depressed = "#{rand(0..1)}"
			energy = "#{rand(0..1)}"
			hopeless = "#{rand(0..1)}"
			sleep_trouble = "#{rand(0..1)}"
			awake_trouble = "#{rand(0..1)}"
			focus = "#{rand(0..1)}"
			no_school = "#{rand(0..1)}"
			exercise = "#{rand(0..1)}"
			primary_class = "Gross Anatomy"
			users.each { |user| user.hourlogs.create!(h_study: h_study, h_sleep: h_sleep, h_lecture: h_lecture, h_mandatory: h_mandatory, h_extracurriculars: h_extracurriculars, meal: meal, anxious: anxious, sad: sad, depressed: depressed, energy: energy, hopeless: hopeless, sleep_trouble: sleep_trouble, awake_trouble: awake_trouble, focus: focus, no_school: no_school, logdate: logdate, primary_class: primary_class)}
		end
	end
end
