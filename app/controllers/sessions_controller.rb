class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:user_name], params[:password])
    if user
      sign_in user
      redirect_to user #TODO:This should redirect to the users jobs
    else
      @title = "Sign in"
      flash.now[:error] = "Invalid email or password"
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url, :notice => "Logged out!"
  end
end
