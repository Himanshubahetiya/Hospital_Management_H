require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HospitalManagement
  class Application < Rails::Application
    # Initialize configuration defaults for Rails 8.0
    config.load_defaults 8.0

    # Explicitly enable the asset pipeline
    config.assets.enabled = true
    config.assets.version = '1.0'

    # Enable asset precompilation for ActiveAdmin
    config.assets.precompile += %w( active_admin.css active_admin.js )
  end
end
