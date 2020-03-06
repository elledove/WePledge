class OrganizationsController < ApplicationController

    def index
     @orgz= Organization.all
    end
end