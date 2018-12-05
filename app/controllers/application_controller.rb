class ApplicationController < ActionController::Base
	def authorize
		redirect_to login_url, alert: "Not Authorized" if current_user.nil?
	end

	def current_user
		# reset_session
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user

	def _navigation
		if params[:search]
      @events = Event.where(name: params[:search]) #variavel events recebe o evento que tem o nome que foi armazenado no search
			@mensagem = "Event Found"
    else
      @events = Event.all
			@mensagem = "Events available"
    end
	end
end
