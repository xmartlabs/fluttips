source "https://rubygems.org"

gem 'cocoapods'
gem "fastlane"
gem 'fastlane-plugin-flutter_version', '~> 1.0', '>= 1.0.1'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
