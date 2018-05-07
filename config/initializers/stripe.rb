Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_ot3bGdaUqNHSFutSUjKaJ6jV'],
  secret_key:      ENV['sk_test_UWZZYrl50ocwfltdzzhth86g']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
