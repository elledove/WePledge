class UsersController < ApplicationController

    def new
        @user = User.new # we probably want co create some user params either here or in User model under private?
    end
end
