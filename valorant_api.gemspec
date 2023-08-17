# frozen_string_literal: true

require_relative "lib/valorant_api/version"

Gem::Specification.new do |spec|
  spec.name = "valorant_api"
  spec.version = ValorantApi::VERSION
  spec.authors = ["Cristian Porras"]
  spec.email = ["cristian@respawn.media"]

  spec.summary = "Ruby Wrapper for valorant-api.com"
  spec.description = "Ruby Wrapper for valorant-api.com"
  spec.homepage = "https://valorant-api.com"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cporrast/valorant_api"
  spec.metadata["changelog_uri"] = "https://github.com/cporrast/valorant_api/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
