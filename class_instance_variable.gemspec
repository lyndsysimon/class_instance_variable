# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "class_instance_variable/version"

Gem::Specification.new do |spec|
  spec.name          = "class_instance_variable"
  spec.version       = ClassInstanceVariable::VERSION
  spec.authors       = ["Lyndsy Simon"]
  spec.email         = ["lyndsy@lyndsysimon.com"]

  spec.summary       = %q{Class instance variables allow descendant classes to inherit values specified in their ancestors by default, but also to overwrite them without modifying the value of the ancestor.}
  spec.description   = %q{A short syntax for defining class instance variables}
  spec.homepage      = "https://github.com/lyndsysimon/class_instance_variable/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
