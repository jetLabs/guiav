class SessionsController < ApplicationController

  skip_before_action :authorize, only: [:admin_create, :new]
  layout false # Para que no lo incluya en el application.html

	def admin_login
    if(session[:admin_id])
      redirect_to admin_path
    else
      render 'login'
    end
	end

	def admin_create
  	  admin = Administrador.find_by(usuario: params[:session][:usuario].downcase)
  	  if admin && (params[:session][:password] == admin.contrasena)
        session[:admin_id] = admin.id
        session[:usuario] = admin.usuario
        redirect_to admin_path
  	  else
      # Create an error message and re-render the signin form.
      	redirect_to admin_login_path, notice: "Invalid email/password combination"
  	  end
  end

	def admin_destroy
    session[:admin_id] = nil
    redirect_to admin_login_path, notice: "Logged out"
	end

  def user_login
    if(session[:user_id])
      redirect_to static_pages_index2_path
    end
  end

  def user_create
    user = User.authenticate(params[:username], params[:pass])
    if user
      session[:user_id] = user.id
      session[:usuario] = user.username
      head :ok
    else
    # Create an error message and re-render the signin form.
      redirect_to static_pages_index2_path, notice: "Invalid email/password combination"
    end
  end

  def user_destroy
    session[:user_id] = nil
    redirect_to admin_login_path, notice: "Logged out"
  end
end
