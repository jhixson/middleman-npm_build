# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "middleman-npm_build"
  s.version       = "0.0.2"
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Jesse Hixson"]
  s.email         = ["hixsonj@gmail.com"]
  s.summary       = "Runs an npm build command after your middleman build process."
  s.description   = "Runs `npm run build` after the middleman build command finishes. You can configure your build process via your package.json file, or pass in a custom build process name."
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 3.3.12"])

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
