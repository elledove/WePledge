class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
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

   def destroy
    session.clear

    redirect_to '/'

   end

end