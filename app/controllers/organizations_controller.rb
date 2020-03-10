class OrganizationsController <  ApplicationController

   def new 

      

   end

    def index
      #binding.pry
      # @orgz = Organization.all
       @donation = Donation.find_by(id: params[:donation_id])
     
    end


     def show
        #will show individual organizations
     end

     def create
      orgz = Organization.create()

        # might be able to creat but will need to have the organization approved first?
        
     end
end