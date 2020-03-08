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
           redirect_to new_donations_organizations_path(@donation)
        else 
            render :new
        end
    end

    def show
    end

    private

    def  donations_params
        params.require(:donations).permit(:amount, :description)
    end
end
