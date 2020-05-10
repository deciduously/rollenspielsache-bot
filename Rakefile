# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'dotenv/load'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'

Dotenv.load
ENV['LD_LIBRARY_PATH'] = 'ext'

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
  task.fail_on_error = false
end

task :run do
  ruby 'bot.rb'
end

task default: :spec
