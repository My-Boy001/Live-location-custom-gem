# frozen_string_literal: true

require_relative "lib/live_location/version"

Gem::Specification.new do |spec|
  spec.name = "live_location"
  spec.version = LiveLocation::VERSION
  spec.authors = ["My-Boy001"]
  spec.email = ["nitin.soni@kalvium.community"]

  spec.summary     = "Fetch live geographic location data based on IP address."
  spec.description = "LiveLocation is a Ruby gem that provides easy access to live geographic information such as city, region, country, and timezone based on the user's IP address. It is lightweight and simple to integrate into Ruby applications."
  spec.homepage      = "https://github.com/My-Boy001/Live-location-custom-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/My-Boy001/Live-location-custom-gem"
  spec.metadata["changelog_uri"]  = "https://github.com/My-Boy001/Live-location-custom-gem"

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

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
