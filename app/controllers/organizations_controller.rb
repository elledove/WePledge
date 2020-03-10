class OrganizationsController <  ApplicationController

   def new 

   end

    def index
     @orgz= Organization.all
    end


     def show
        #will show individual organizations
     end

     def create

        # might be able to creat but will need to have the organization approved first?
        
     end
end