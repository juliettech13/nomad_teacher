class PaymentsController < ApplicationController
  before_action :set_booking

  def new
    @lesson = Lesson.find(params[:lesson_id])
    authorize @booking
  end

  def create
    authorize @booking
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
      )

    charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for lesson #{@booking.lesson_sku} for order #{@booking.id}",
    currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end
end

private

def set_booking
  @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
end

