class PaymentsController < ApplicationController
  def new
    @list = List.where(user_id: current_user.id, has_paid: false).first
    @payment = Payment.new(amount: @list.total_amount, user_id: current_user.id, list_id: @list.id)
  end

  def create
    @payment = Payment.new(payment_params)
    @list = List.find(@payment.list_id)
    response = @payment.create_stripe_payment(params[:stripeEmail], params[:stripeToken], @payment.amount)
    if response.status === 'succeeded'
      @list.update_attributes(has_paid: true)
      @payment.payment_successful = true
      @payment.save!
      flash[:notice] = 'Your payment was successful'
      redirect_to root_path
    else
      @payment.payment_successful = false
      @payment.save!
      flash[:alert] = 'Your card has been declined'
      redirect_to new_payment_path
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :user_id, :list_id)
  end
  
end
