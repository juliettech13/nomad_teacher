class PaymentsController < ApplicationController
  before_action :set_booking
  skip_after_action :verify_authorized

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @payment = Payment.create
    # authorize @payment
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @payment = Payment.create
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
    redirect_to lesson_booking_path(@lesson, @booking)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_lesson_booking_payment_path(@lesson, @booking)
  end
    # authorize @payment
end

private

def set_booking
  @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
end

