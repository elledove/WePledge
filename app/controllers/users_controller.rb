class UsersController < ApplicationController

    def new
        @user = User.new # we probably want co create some user params either here or in User model under private?
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            sessions[:user_id] = @user.id 
            redirect_to 
        else 

        end

        binding.pry
    end










    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
