# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lessangst_session',
  :secret      => '0f074eda7198d814f991d13aaec1395cdd7a77400a4313281cf61864d10db6ec652b6b9ccab3e132fa72ea2da377ac17864a587ada7f5c5de468957e561f49d5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
