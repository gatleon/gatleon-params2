require_relative 'lib/gatleon/params2/version'

Gem::Specification.new do |spec|
  spec.name          = "gatleon-params2"
  spec.version       = Gatleon::Params2::VERSION
  spec.authors       = ["gatleon"]
  spec.email         = [""]

  spec.summary       = %q{remove action and controller from your rails params}
  spec.description   = %q{remove action and controller from your rails params}
  spec.homepage      = "https://gatleon.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gatleon/gatleon-params2"
  spec.metadata["changelog_uri"] = "https://github.com/gatleon/gatleon-params2"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("activesupport")
end
