class OrganizationsController <  ApplicationController

    def index
     @orgz= Organization.all
    end


     def show
        #will show individual organizations
     end
end