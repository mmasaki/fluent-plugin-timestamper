# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-timestamper"
  spec.version       = "0.0.1"
  spec.authors       = ["Masaki Matsushita"]
  spec.email         = ["glass.saga@gmail.com"]
  spec.summary       = %q{Fluentd output plugin which adds timestamp field to record in various formats.}
  spec.homepage      = "https://github.com/Glasssaga/fluent-plugin-timestamper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "timecop"
  spec.add_runtime_dependency "fluentd"
end
