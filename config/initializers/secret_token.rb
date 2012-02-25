# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
MobileClinic::Application.config.secret_token = Rails.env.development? ? "not important on dev but i'll pad this out anyway la la la" : ENV['SECRET_TOKEN']