class UsersController < ApplicationController

    def new
        @user = User.new # we probably want co create some user params either here or in User model under private?
    end

    def create 
        @user = User.new(user_params)
        if @user.save
           #log_in(@user)
            redirect_to '/login'
        else 
           render :new
        end

        
    end










    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
