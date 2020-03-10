class OrganizationsController <  ApplicationController

   def new 

      

   end

    def index
       @orgz = Organization.all
       #@donation = Donation.find_by(id: params[:donation_id])
     
    end


     def show
        #will show individual organizations
     end

     def create
      orgz = Organization.create()

        # might be able to creat but will need to have the organization approved first?
        
     end

     private 

     def organization_params
      params.require(:organization).permit(:date, :amount, :description, :organiztion_id)
     end
end