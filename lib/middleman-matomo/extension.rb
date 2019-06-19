require 'middleman-matomo/helpers'

module Middleman
  class MatomoExtension < Extension

    option :domain, nil, 'Matomo domain'
    option :site_id, nil, 'Site ID'

    def after_configuration
      unless options.domain
        $stderr.puts 'Matomo: Please specify the domain used for Matomo'
        raise ArgumentError, 'No domain given' if app.build?
      end

      unless options.site_id
        $stderr.puts 'Matomo: Please specify site id'
        raise ArgumentError, 'No site_id given' if app.build?
      end
    end

    helpers do
      include ::Middleman::Matomo::Helpers
    end

    private

    def legacy_development?
      return false if ENV['TEST'] == 'true'

      # Middleman 3.4
      is_development = try(:development?)
      return is_development unless is_development.nil?

      # Middleman 4.x
      app.development?
    end

  end
end
