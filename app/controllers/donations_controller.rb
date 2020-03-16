class DonationsController < ApplicationController

    before_action :require_login

    def index
            get_organization
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
        get_organization
        redirect_to organizations_path if !@orgz
        @donation = Donation.new
       

    end

    def create
        @orgz = Organization.find_by(id: params[:donation][:organization_id])
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
       
    end

    
    private

    def  donations_params
        params.require(:donation).permit(:date, :amount, :description, :organization_id, :user_id)
    end


    def get_organization
        @orgz ||= Organization.find_by(id: params[:organization_id])
    end
end
