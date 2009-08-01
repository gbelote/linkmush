# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_linkmush_session',
  :secret      => '377bc1ff5fe00ebdc1594f6ce369b74464f1f69d94e8cc1b2364003745efedc1b8f7f8786534cd4cea64e53663d0c406ac03a2508c0e47b738d3d00099dc8cc2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
