# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "assert_and_verify/version"

Gem::Specification.new do |spec|
  spec.name          = "assert_and_verify"
  spec.version       = AssertAndVerify::VERSION
  spec.authors       = ["Andrew Rymar"]
  spec.email         = ["andrew.rymar@gmail.com"]

  spec.summary       = %q{Provides handy assert and verify methods}
  spec.homepage      = "https://gitlab.com/circloom/assert_and_verify"
  spec.license       = "MIT"

  spec.files         = %w[
    Gemfile
    LICENSE.txt
    README.md
    Rakefile
    assert_and_verify.gemspec
    lib/assert_and_verify.rb
    lib/assert_and_verify/version.rb
  ]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "test-unit", "~>3.2.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
