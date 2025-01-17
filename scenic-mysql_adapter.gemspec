# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "scenic/mysql_adapter/version"

Gem::Specification.new do |spec|
  spec.name          = "scenic-mysql_adapter"
  spec.version       = Scenic::MysqlAdapter::VERSION
  spec.authors       = ["Lance Ivy"]
  spec.email         = ["lance@cainlevy.net"]

  spec.summary       = %q{MySQL adapter for thoughtbot/scenic}
  spec.homepage      = "https://github.com/EmpaticoOrg/scenic-mysql_adapter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "scenic", ">= 1.4.0"
  spec.add_dependency "mysql2"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "appraisal"
end
