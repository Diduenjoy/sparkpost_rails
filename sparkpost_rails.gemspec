$:.push File.expand_path("../lib", __FILE__)

require "sparkpost_rails/version"

Gem::Specification.new do |s|
  s.name        = 'sparkpost_rails'
  s.version     = SparkPostRails::VERSION
  s.authors     = ["Kevin Kimball", "Dave Goerlich"]
  s.email       = ['kwkimball@gmail.com', 'dave.goerlich@the-refinery.io']
  s.homepage    = 'https://github.com/the-refinery/sparkpost_rails'
  s.summary     = "SparkPost for Rails"
  s.description = "Delivery Method for Rails ActionMailer to send emails using the SparkPost API"
  s.license     = 'MIT'

  s.files = Dir["{lib}/**/*"] + ["LICENSE", "README.md"]
  s.test_files = Dir["{spec}/**/*"]

  %w[actionmailer railties].each do |rails_gem|
    s.add_dependency rails_gem, '> 6.1.0', '< 9.0.0'
  end
end
