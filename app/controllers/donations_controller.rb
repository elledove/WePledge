class DonationsController < ApplicationController
    def index
         
        @donations = Donation.all
    end

    def new
        @donation = Donation.new

    end

    def create
        @donation = Donation.create
        if @donation.valid?
           redirect_to welcome_path
        else 
            binding.pry
            render :new 
        end
    end

    def show
    end

    private

    def  donations_params
        params.require(:donations).permit(:date, :amount, :description)
    end
end
