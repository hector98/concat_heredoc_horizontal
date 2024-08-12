# frozen_string_literal: true

require_relative "lib/concat_heredoc_horizontal/version"

Gem::Specification.new do |spec|
  spec.name = "concat_heredoc_horizontal"
  spec.version = ConcatHeredocHorizontal::VERSION
  spec.authors = ["Hector Manuel Barrios Barrios"]
  spec.email = ["barrioshector13@gmail.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Hello and welcome to my gem, this gem is simple but it helped me solve a problem about concatenating two multi-line strings (Heredoc's), since these have line breaks, which make it difficult to position them horizontally, the gem is also capable of concatenating simple strings."
  spec.homepage = "https://github.com/hector98/concat_heredoc_horizontal"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hector98/concat_heredoc_horizontal"
  spec.metadata["changelog_uri"] = "https://github.com/hector98/concat_heredoc_horizontal/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
