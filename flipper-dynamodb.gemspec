lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flipper/dynamodb/version"

Gem::Specification.new do |spec|
  spec.name          = "flipper-dynamodb"
  spec.version       = Flipper::Dynamodb::VERSION
  spec.authors       = ["Noel Rocha"]
  spec.email         = ["noelrocha@gmail.com"]

  spec.summary       = "Dynamodb Adapter for Flipper"
  spec.description   = "Dynamodb Adapter for Flipper"
  spec.homepage      = "https://github.com/noelrocha/flipper-dynamodb"
  spec.license       = "MIT"


  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "flipper", "~> 0.16.2"
  spec.add_dependency "dynamoid", "~> 3.2.0"
end
