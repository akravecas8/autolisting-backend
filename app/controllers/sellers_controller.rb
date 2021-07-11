class SellersController < ApplicationController
    def index
      @sellers = Seller.all
  
      render json: @sellers, except: [:created_at, :updated_at]
    end
  
    def show
      @seller = Seller.find(params[:id])
  
      render json: @seller
    end
  
    def new
      @seller = Seller.new
    end
  
    def create
      seller = Seller.create!(seller_params)
  
      if seller.valid?
        render json: seller
      else
        flash[:errors] = seller.errors.full_messages
        render json: flash[:errors]
      end
    end
  
    # def destroy
    #     seller = Seller.find(params[:id])
    #     seller.destroy!
  
    #     render json: {}
    # end
  
    # def update
    #     seller = Seller.find(params[:id])
    #     # seller.update(likes: seller.likes + 1)
    #     seller.update(seller_params)
  
    #     render json: seller
    # end
  
    private
  
    def seller_params
        params.permit(:name, :address, :phone_number)
    end
    
  end