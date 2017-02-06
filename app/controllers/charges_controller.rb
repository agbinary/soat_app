class ChargesController < ApplicationController
  def new
    @soat = Soat.find(params[:soat])
  end

  def create
    @soat = Soat.find(params[:soat])
    @value = @soat.total_value*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @value,
      :description => 'Pago del Soat',
      :currency    => 'cop'
    )

    @soat.update_pay
    @soat.deliver_email_for_pay

    redirect_to soat_path(@soat)
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
