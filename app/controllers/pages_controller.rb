class PagesController < ApplicationController
  def home
    @title = "Home"
    redirect_to current_user unless current_user.nil?
  end

  def contact
  end

  def help
  end

  def about
  end
end
