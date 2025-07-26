class SessionsController < ApplicationController
  def create
      user = User.find_by(username: params[:username])
      if session[:user_id]
        redirect_to bank_accounts_path, notice: "You are already logged in."
        return
      end
      # authiticate user creditials
      # if user is found and password is correct, set session
      # if user is not found or password is incorrect, render login form with error message
      # if user is found and password is correct, set session
      # if user is not found or password is incorrect, render login form with error message
      if user && user.authenticate(params[:password])
          # set session and redirect on successful login
          session[:user_id] = user.id
          redirect_to bank_accounts_path, notice: "Logged in successfully"
      else
          # render login form with error message
          message = "Invalid username or password"
          redirect_to login_path, alert: message
      end
  end
  def login
    # render login form
    # if user is already logged in, redirect to bank_accounts_path
    if session[:user_id]
      redirect_to bank_accounts_path, notice: "You are logged in."
    else
      render :login
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully"
  end
end
