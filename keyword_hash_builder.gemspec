require_relative './lib/version.rb'
Gem::Specification.new do |s|
  s.name        = "keyword_hash_builder"
  s.version     = KeywordHashBuilder::VERSION
  s.date        = "2017-01-03"
  s.summary     = "a shorthand for building hashes, in the manner of javascript"
  s.description = ""
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["maxpleaner"]
  s.email       = 'maxpleaner@gmail.com'
  s.required_ruby_version = '~> 2.3'
  s.homepage    = "https://github.com/maxpleaner/keyword_hash_builder"
  s.files       = Dir["lib/**/*.rb", "bin/*", "**/*.md", "LICENSE"]
  s.require_path = 'lib'
  s.required_rubygems_version = ">= 2.5.1"
  s.add_dependency 'debug_inspector'
  s.executables = Dir["bin/*"].map &File.method(:basename)
  s.license     = 'MIT'
end
