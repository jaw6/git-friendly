# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'git-friendly'

Gem::Specification.new do |s|
  s.name        = "git-friendly"
  s.version     = GitFriendly::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["joshua wehner"]
  s.email       = ["joshua.wehner@gmail.com"]
  s.homepage    = "http://github.com/jaw6/git-friendly"
  s.summary     = "git commands to make tracking and publishing remote branches easier for everyone"
  s.description = "GitFriendly currently contains two commands that make working with remote branches easier in git."

  s.add_dependency "colored", ">= 1.2"
  s.add_dependency "grit"

  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README Rakefile)
  s.require_path = 'lib'
  s.executables  = Dir.glob("bin/*").map(&File.method(:basename))
end
