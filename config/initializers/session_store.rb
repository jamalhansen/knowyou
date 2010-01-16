# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_knowyou_session',
  :secret => '0e935e80b83996a1cbe672cc110ab6d0835be3ce77b2b13d481a7cecf112cdd3aa943f4fc834fc60999527735c0e8da856e13cba7ae7e9f1effa9d94d013aa78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
