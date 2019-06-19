require 'erubis'

module Middleman
  module Matomo
    module Helpers

      def matomo_tag
        options = extensions[:matomo].options

        file = File.join(File.dirname(__FILE__), 'matomo.html.erb')
        context = { options: options }
        content = Erubis::FastEruby.new(File.read(file)).evaluate(context)

        content
      end
    end
  end
end
