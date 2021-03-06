class ApplicationController < ActionController::Base

    def current_user
     User.find_by(id: session[:user_id])
    end

def require_login
    redirect_to :root unless logged_in?
end

def logged_in?
    !!current_user
end

def log_in(user)
    session[:user_id] = user.id
end

def authorized?
    logged_in? && current_user.admin?
end
    
end


