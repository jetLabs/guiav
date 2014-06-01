class SessionsController < ApplicationController

  skip_before_action :authorize, only: [:create, :new]
  layout false # Para que no lo incluya en el application.html

	def login
    if(session[:user_id])
      redirect_to admin_path
    end
	end

	def create
  	  user = Administrador.find_by(usuario: params[:session][:usuario].downcase)
  	  if user && (params[:session][:password] == user.contrasena)
        session[:user_id] = user.id
        session[:usuario] = user.usuario
        redirect_to admin_path
  	  else
      # Create an error message and re-render the signin form.
      	redirect_to admin_login_path, notice: "Invalid email/password combination"
  	  end
  end

	def destroy
    session[:user_id] = nil
    redirect_to admin_login_path, notice: "Logged out"
	end
end
