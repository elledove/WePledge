class DonationsController < ApplicationController
    def index
         
        @donations = Donation.all
    end

    def new
        @donation = Donation.new

    end

    def create
        @donation = Donation.new(donations_params)
        if @donation.save 
           redirect_to organization_donations_path(@donation)
        else 
            #binding.pry
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
