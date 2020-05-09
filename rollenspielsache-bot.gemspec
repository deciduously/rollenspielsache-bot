# frozen_string_literal: true

require_relative 'lib/rollenspielsache/bot/version'

Gem::Specification.new do |spec|
  spec.name          = 'rollenspielsache-bot'
  spec.version       = Rollenspielsache::Bot::VERSION
  spec.authors       = ['Ben Lovy']
  spec.email         = ['ben@deciduously.com']

  spec.summary       = 'Discord interface for rollenspielsache'
  spec.description   = 'A Discord bot for using librollenspilsache and interacting with rollenspielsache-svc'
  spec.homepage      = 'https://github.com/deciduously/rollenspielsache-bot'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/deciduously/rollenspielsache-bot'
  spec.metadata['changelog_uri'] = 'https://github.com/deciduously/rollenspielsache-bot/blob/master/CHANGELOG.md'

  spec.add_runtime_dependency 'discordrb'
  spec.add_runtime_dependency 'dotenv'
  spec.add_runtime_dependency 'librollenspielsache-rb'

  spec.add_development_dependency 'rubocop'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
