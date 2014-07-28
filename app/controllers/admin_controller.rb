class AdminController < ActionController::Base

	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

	before_action :authorize

	protected

	  def authorize
		unless Administrador.find_by(id: session[:admin_id])
			redirect_to admin_login_path, notice: "Please sign in"
		end
	  end

end
