require "stripe"
Stripe.api_key = Etoria_Ebooks_2::Application.credentials.stripe[:secret_key]
