class HourlogsController < ApplicationController
	before_action :signed_in_user,		only: [:index, :create]
	before_action :admin_user, 		only: [:index, :destroy]
	before_filter :format_date, 		only: [:create]

	def index
		@hourlogs = Hourlog.all
	end

	def create
		@hourlog = current_user.hourlogs.build(hourlog_params)
		if @hourlog.save
			flash[:success] = "Log created."
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	def destroy
		Hourlog.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to hourlogs_url
	end

	private

		def hourlog_params
			params.require(:hourlog).permit(:logdate, :h_study, :h_sleep, :h_lecture, :h_mandatory, :h_extracurriculars, :meal, :anxious, :sad, :depressed, :energy, :hopeless, :sleep_trouble, :awake_trouble, :focus, :no_school, :primary_class, :exercise)
		end

		def format_date
			params[:hourlog][:logdate].to_s
		end
end
