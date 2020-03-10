class DonationsController < ApplicationController
    def index
         
        if params[:organization_id]
            @orgz = Organization.find_by(id: params[:organization_id])
            @donations = @orgz.donations
          else
            @donations = Donation.all
        end
            
    end

    def new
        @donation = Donation.new

    end

    def create
        @donation = Donation.new(donations_params)
        #binding.pry
        if @donation.save 
           redirect_to organization_donations_path(@donation.organization)
        else 
            
            render :new 
        end
    end

    def show
    end

    private

    def  donations_params
        params.require(:donation).permit(:date, :amount, :description, :organization_id, :user_id)
    end
end
