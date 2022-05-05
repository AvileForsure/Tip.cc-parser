# frozen_string_literal: true

require_relative "lib/tipccparser/version"

Gem::Specification.new do |spec|
  spec.name = "tipccparser"
  spec.version = Tipccparser::VERSION
  spec.authors = ["AvileForsure"]
  spec.email = ["avile333k@gmail.com"]

  spec.summary = "Simple gem to parse tips sent through Tip.cc."
  spec.homepage = "https://github.com/AvileForsure/Tip.cc-parser"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/AvileForsure/Tip.cc-parser"
  spec.metadata["changelog_uri"] = "https://github.com/AvileForsure/Tip.cc-parser/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", "~> 13.0.6"
  spec.add_dependency "json", "~> 2.6.1"
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
