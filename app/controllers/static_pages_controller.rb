class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def login
    user = User.get(params[:user])
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

  def index2
  end
end
