class UsersController < ApplicationController
	before_action :signed_in_user, 	only: [:index, :show, :edit, :update]
	before_action :correct_user, 		only: [:show, :edit, :update]
	helper_method :sort_column, :sort_direction

	def index
		@users = User.order(sort_column + ' ' + sort_direction)
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			flash[:success] = "Account Created"
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @user.update_attributes(user_params)
			flash[:success] = "Profile updated"
			redirect_to @user
		else
			render 'edit'
		end
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :year)
		end

		# Before filters

		def signed_in_user
			unless signed_in?
				store_location
				redirect_to signin_url, notice: "Please sign in." unless signed_in?
			end
		end

		def correct_user
			@user = User.find(params[:id])
			redirect_to(root_url) unless current_user?(@user)
		end

		def sort_column
			User.column_names.include?(params[:sort]) ? params[:sort] : "name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
