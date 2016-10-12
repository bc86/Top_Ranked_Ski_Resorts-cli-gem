# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative './top_ranked_ski_resorts/version'

Gem::Specification.new do |spec|
  spec.name          = "top_ranked_ski_resorts"
  spec.version       = TopRankedSkiResorts::VERSION
  spec.date          = '2016-10-12'
  spec.authors       = ["Brett Cole"]
  spec.email         = ["michael.4486@gmail.com"]
  spec.description   = %q{List of Top Ranked Ski Resorts of North America}
  spec.summary       = %q{List of Top Ranked Ski Resorts of North America}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
