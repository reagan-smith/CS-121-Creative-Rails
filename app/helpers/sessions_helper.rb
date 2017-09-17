module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id 
	end

	# returns the current logged-in user
	def current_user
		@ current_user ||= User.find_by(id: session[:user_id])
end
