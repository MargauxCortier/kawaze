require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Kawaze
	class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.paths << Rails.root.join("app", "assets", "font-awesome", "css")
    config.assets.paths << Rails.root.join("app", "assets", "font-awesome", "fonts")
    config.assets.paths << Rails.root.join("app", "assets", "font-awesome", "less")
    config.assets.paths << Rails.root.join("app", "assets", "font-awesome", "scss")
    config.assets.paths << Rails.root.join("app", "assets", "rs-plugin", "assets")
    config.assets.paths << Rails.root.join("app", "assets", "rs-plugin", "css")
    config.assets.paths << Rails.root.join("app", "assets", "rs-plugin", "font")
    config.assets.paths << Rails.root.join("app", "assets", "rs-plugin", "images")
    config.assets.paths << Rails.root.join("app", "assets", "rs-plugin", "js")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
