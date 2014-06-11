class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def login

    print("<===== #{params} =====>")
    # NO ESTA ANDANDO EL TEMA DEL PARAMETRO!!!
    user = User.find_by(username: params[:user]) #User.get(params[:user]) # Lo comente porque me daba error el get
    print("Vaaaaa entro en el login #{params[:user]}")
    print(user)
    if user && (params[:pass] == user.password)
      session[:user_id] = user.id
      session[:username] = user.username
      # Respuesta correcto
      @response = {correct: 1}
      render json: @response
    else
      # Respuesta error
      @response = {correct: 0}
      render json: @response
    end

  end
end
