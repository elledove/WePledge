class SessionsController < ApplicationController

    def new
    end

    def create
      if auth_hash = request.env["omniauth.auth"] # logging in with omniauth
        oauth_username = request.env["omniauth.auth"]["username"]

        if user = User.find_by(:username => oauth_username) # represents verified info coming 
        raise "EXISTING USER LOGGING IN VIA GITHUB".inspect

        session[:user_id] = user.id

        redirect_to root_path

      else 
        raise "NEW USER LOGGING IN".inspect

        user = User.new(:username => oauth_username)
        if user.save
          session[:user_id] = user.id

          redirect_to root_path
        else
          raise users.errors.full_messages.inpsect
        end
      end

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