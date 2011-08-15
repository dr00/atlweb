class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end


  def deny_access
    store_location
    redirect_to signing_path, :notice => "Please sign in to access this page."
  end

  def create
    user = User.authenticate(params[:user_name],
                             params[:password])

    if user
      sign_in user
      redirect_back_or user
    else
      @title = "Sign in"
      flash.now[:error] = "Invalid user name or password"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url, :notice => "Logged out!"
  end
end
