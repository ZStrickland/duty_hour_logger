require 'spec_helper'

describe Hourlog do
	let(:user) {FactoryGirl.create(:user)}
	before {@hourlog = user.hourlogs.build(h_study: "5", h_sleep: "8")}

	subject {@hourlog}

	it {should respond_to(:user_id)}
	it {should respond_to(:h_study)}
	it {should respond_to(:h_sleep)}
	it {should respond_to(:logdate)}

	it {should be_valid}

	describe "when user_id is not present" do
		before {@hourlog.user_id = nil}
		it {should_not be_valid}
	end

	describe "with blank h_study" do
		before {@hourlog.h_study = " "}
		it {should_not be_valid}
	end

	describe "with noninteger h_study" do
		before {@hourlog.h_study = "a"}
		it {should_not be_valid}
	end

	describe "with blank h_sleep" do
		before {@hourlog.h_sleep = " "}
		it {should_not be_valid}
	end

	describe "with noninteger h_sleep" do
		before {@hourlog.h_sleep = "a"}
		it {should_not be_valid}
	end
end
