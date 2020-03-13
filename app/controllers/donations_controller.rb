class DonationsController < ApplicationController

    before_action :require_login

    def index
            
        if params[:organization_id]
            @orgz = Organization.find_by(id: params[:organization_id])
            @donations = @orgz.donations
            @userdonation = Donation.user_owns(current_user,@donations)
            #binding.pry
        else
            @donations = Donation.all
        
        end
            
    end

    def new
        @donation = Donation.new

    end

    def create
        @donation = current_user.donations.build(donations_params)
        #@donation = Donation.new(donations_params)
        #binding.pry
        if @donation.save 
           redirect_to organization_donations_path(@donation.organization)
        else 
            
            render :new
        end
    end

    def show
       find_by
    end

    
    private

    def  donations_params
        params.require(:donation).permit(:date, :amount, :description, :organization_id, :user_id)
    end
end
