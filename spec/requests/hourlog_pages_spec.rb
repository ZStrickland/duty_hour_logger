require 'spec_helper'

describe "HourlogPages" do

	subject {page}

	let(:user) {FactoryGirl.create(:user)}
	before {sign_in user}

	describe "hourlog creation" do
		before {visit root_path}

		describe "with invalid information" do

			it "should not create a log" do
				expect {click_button "Create log"}.not_to change(Hourlog, :count)
			end

			describe "error messages" do
				before {click_button "Create log"}
				it {should have_content('blank')}
			end
		end

		describe "with valid information" do

			before do
				fill_in 'hourlog_h_study', with: "5"
				fill_in 'hourlog_h_sleep', with: "8"
			end
			it "should create a log" do
				expect {click_button "Create log"}.to change(Hourlog, :count)
			end
		end
	end
end
