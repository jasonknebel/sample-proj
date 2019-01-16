class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :list

  def create_stripe_payment(email, token, amount)
    customer = Stripe::Customer.create(
      :email => email,
      :source  => token
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => amount,
      :description => 'Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    raise "Error processing card"
    # flash[:error] = e.message
  end

end
