# Require core library
require 'middleman-core'

# Extension namespace
class NpmBuild < ::Middleman::Extension
  option :build_command, 'build', 'Your custom build command'

  def initialize(app, options_hash={}, &block)
    super

    build_command = options.build_command
    app.before_build do |builder|
      system "npm run #{build_command}"
    end
  end
end

NpmBuild.register(:npm_build)
