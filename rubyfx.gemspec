
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubyfx/version"

Gem::Specification.new do |spec|
  spec.name          = "rubyfx"
  spec.version       = Rubyfx::VERSION
  spec.platform      = 'java'
  spec.authors       = ["Scott Haney"]
  spec.email         = ["emailalmondbranch@gmail.com"]

  spec.summary       = "JRuby wrapper for JavaFX"
  spec.description   = "JRuby wrapper for JavaFX"
  spec.homepage      = "http://www.almondbranchsoftware.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir[File.join(File.dirname(__FILE__), 'lib/**/*.{rb,class}')]
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "jbundler", "~> 0.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "warbler", "~> 2.0"
end
