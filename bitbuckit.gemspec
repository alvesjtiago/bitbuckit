lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bitbuckit/version"

Gem::Specification.new do |spec|
  spec.name          = "bitbuckit"
  spec.version       = Bitbuckit::VERSION
  spec.authors       = ["Tiago Alves"]
  spec.email         = ["alvesjtiago@gmail.com"]

  spec.summary       = "Bitbucket API"
  spec.description   = "Bitbucket API"
  spec.homepage      = "https://github.com/alvesjtiago/bitbuckit"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sawyer", ">= 0.5.3", "~> 0.8.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
