require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Takufy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Replace Japanese from Engilish
    config.i18n.default_locale= :ja

    # Debug for carrier wave
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]

  end
end
