class CustomersController < ApplicationController
    def index
        @customers = Customer.all
        render json: @customers
    end

    def create
        @customer = Customer.create({
            name: params[:name],
            status: params[:status]
        })

            redirect_to "http://localhost:3001"
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.coffees.each do |coffee|
            coffee.destroy
        end

        @customer.destroy

        redirect_to "http://localhost:3001"
    end
end
