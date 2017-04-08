# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_app_session'
Rails.application.config.session_store :redis_store,
                                      servers: 'redis://redis:6379/0/_app_session',
                                      expire_in: 3.months
