class DonationsController < ApplicationController
    def index
         
        @donations = Donation.all
    end

    def new

    end

    def create
    end

    def show
    end
end
