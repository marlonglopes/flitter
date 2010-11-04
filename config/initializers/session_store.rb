# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flitter_session',
  :secret      => 'adfd2bb316e73a00539f7e6f5ab8da636f0ddff8f44ada078192e7d4a1e10df574a352981e4ae372f72a9ae7c4674ef6af5406f1299d50f6356dcf1f4c5c76f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
