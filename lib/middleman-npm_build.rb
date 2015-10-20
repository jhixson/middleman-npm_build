# Require core library
require 'middleman-core'

# Extension namespace
class NpmBuild < ::Middleman::Extension
  option :build_command, 'build', 'Your custom build command'

  def initialize(app, options_hash={}, &block)
    super
  end

  def after_build(builder)
    %x(npm run #{options_hash.build_command})
  end
end

NpmBuild.register(:npm_build)
