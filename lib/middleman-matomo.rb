require 'middleman-core'
require 'middleman-matomo/version'

::Middleman::Extensions.register(:matomo) do
  require 'middleman-matomo/extension'
  ::Middleman::MatomoExtension
end
