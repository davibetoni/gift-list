module Api
	module V1
		class ProductsController < ApplicationController   
      skip_before_action :verify_authenticity_token
      before_action :set_product, only: %i[update]

      def index
        products = Product.order('created_at DESC');
				render json: products, include: [payments: { except: :qr_code }], status: :ok
      end

      def create
        product = Product.new(product_params)
        if product.save
          render json: product, status: :ok
        else
          render json: product.erros, status: :unprocessable_entity
        end
      end

      private
    
      def product_params
        params.require(:product).permit(:name, :value, :photo, :store_url)
      end
		end
	end
end