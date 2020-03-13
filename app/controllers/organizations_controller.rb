class OrganizationsController <  ApplicationController

   def new 

      

   end

    def index
       @orgz = Organization.all
       #@donation = Donation.find_by(id: params[:donation_id])
     
    end


     def show
        @orgz = Organization.find(params[:id])
     end

     def create
      orgz = Organization.create()

        # might be able to creat but will need to have the organization approved first?
        
     end

     def search 
       params[:search]
       @orgz = Organization.search(params[:search])
      if  @orgz == []
      @error =
       @orgz = Organization.all  # will have to change this eventually using a created method called user_login??
       end
     end

     private 

     def organization_params
      params.require(:organization).permit(:date, :amount, :description, :organiztion_id, :animal)
     end
end