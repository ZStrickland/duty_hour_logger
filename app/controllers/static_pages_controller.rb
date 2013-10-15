class StaticPagesController < ApplicationController
  def home
  	@hourlog = current_user.hourlogs.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
