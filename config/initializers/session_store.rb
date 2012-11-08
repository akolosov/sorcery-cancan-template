# Be sure to restart your server when you modify this file.

{programName}::Application.config.session_store :active_record_store, key: '_{program_name}_session', :expire_after => 60.minute

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# {programName}::Application.config.session_store :active_record_store
