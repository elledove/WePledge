class SessionsController < ApplicatonController

    def new
    end

    def create
        user = User.find_by(username: params["user"]["username"]).try(:authenticate, params["user"]["password"])
    #   user = User.find_by(username: params["username"]).try(:authenticate, params["password"])
       if 
        user
        session[:user_id] = user.id

        render ''
        
      else
        
     end

    end


    def login
    end
    

    def logout
    end

end