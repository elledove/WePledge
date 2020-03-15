module SessionsHelper

def current_user
    User.find_by(id: session[:user_id])
   end


def logged_in?
    !!current_user
end

def authorized?
    logged_in? && current_user.admin?
end

end
