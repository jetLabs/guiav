class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def login
  	user = User.get(params[:session][:username].downcase)
  	if user && (params[:session][:password] == user.password)
      session[:user_id] = user.id
      session[:username] = user.username
  	else
    	# Create an error message and re-render the signin form.
    	redirect_to admin_login_path, notice: "Invalid email/password combination"
  	end
  end
end
