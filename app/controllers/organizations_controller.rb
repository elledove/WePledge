class OrganizationsController <  ApplicationController

   def new 
      @org = Organization.new
   end

    def index
       @orgz = Organization.all
      
    end


     def show
        @org = Organization.find(params[:id])
     end

     def create
      @org = Organization.create(organization_params)
      if @org.save
         redirect_to organizations_path
      else
         render :new

     end
   end

     def search 
       params[:search]
       @orgz = Organization.search(params[:search])
      if  @orgz == []
         @error = "Sorry, We don't have that species added yet! Coming Soon!"
        render :index
       end
       #render :index
     end

     private 

     def organization_params
      params.require(:organization).permit(:date, :amount, :name, :description, :organiztion_id, :animal)
     end
end