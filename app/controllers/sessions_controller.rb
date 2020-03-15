class SessionsController < ApplicationController

    def new
    end

    def create
      #binding.pry
      if auth_hash = request.env["omniauth.auth"] # logging in with omniauth
              @user =  User.find_or_create_by_omniauth(auth_hash)
             log_in(@user)
             redirect_to organizations_path
      else
        @user = User.find_by(username: params[:username]) ## START OF OG CODE!
        if !@user
         @error = "Uhmm....So this is a bit awkaward. Have you been here before? Can't seem to find you."
         render :new
        elsif !@user.authenticate(params[:password])
          @error = "Psst..Check your password!"
          render :new
        else  
          log_in(@user)
 
          redirect_to organizations_path         
       end
      end
    end

   def destroy
    session.clear

    redirect_to '/'

   end

end