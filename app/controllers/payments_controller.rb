class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show edit update destroy]

  # GET /payments/1 or /payments/1.json
  def show
    @product = Product.find(params[:product_id])
  end

  # GET /payments/new
  def new
    @product = Product.find(params[:product_id])
    @payment = Payment.new
  end

  # POST /payments or /payments.json
  def create
    @product = Product.find(params[:product_id])
    @payment = @product.payments.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to product_payment_url(@product, @payment), notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:payer_name, :payer_phone, :description, :value)
  end
end
