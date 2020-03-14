class SessionsController < ApplicationController

    def new
    end

    def create
      #binding.pry
      if auth_hash = request.env["omniauth.auth"] # logging in with omniauth
        oauth_username = request.env["omniauth.auth"]["info"]["nickname"]
        if @user = User.find_by(:username => oauth_username) # represents verified info coming 
        #raise "EXISTING USER LOGGING IN VIA GITHUB".inspect

          log_in(@user)

          redirect_to root_path

        else 
          #binding.pry
          password_c = SecureRandom.hex
          @user = User.new(:username => oauth_username, :password => password_c, :password_confirmation =>  password_c)

          log_in(@user)
          
          redirect_to organizations_path
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