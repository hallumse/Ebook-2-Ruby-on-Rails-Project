require "stripe"
Stripe.api_key = EtoriaEbooks2::Application.credentials.stripe[:secret_key]
