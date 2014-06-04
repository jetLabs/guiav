class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  helper_method :paypal_url
  #before_action :authorize
  def paypal_url

    values = {
      # get it form your http://sandbox.paypal.com account
      :business => 'jandres.rodriguezg-facilitator@gmail.com',
      :cmd => '_cart',
      :upload => 1,
      :return => "http://guiav.herokuapp.com/",
      :no_shipping => 1
    }
    # These values set up the details for the item on paypal.
       values.merge!({
        # The amount is in cents
        "amount_1" => 50,
        "item_name_1" => "GuiaV PRO License" ,
        "quantity_1" => 1
      })

    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query

  end
  #protected

  #def authorize
  #  puts 'AdminController'

	#	unless Administrador.find_by(id: session[:user_id])
	#		redirect_to login_path, notice: "Por favor ingrese"
	#	end
  #end
end
