Rails.configuration.stripe = {
  :publishable_key => 'pk_test_7EUBSG0D1mLNGS9m5JmNTEO0',
  :secret_key      => 'sk_test_ADtrLYvDlWzCuLUFkd6c8RgH'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]