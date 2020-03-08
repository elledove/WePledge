class DonationsController < ApplicationController
    def index
         
        @donations = Donation.all
    end

    def new
        @donation = Donation.new

    end

    def create
    end

    def show
    end
end
