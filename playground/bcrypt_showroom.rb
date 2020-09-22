require 'bundler/inline'

gemfile true do
  source 'https://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

mypass = BCrypt::Password.create("my special pass")

puts mypass
puts mypass.version
puts mypass.cost

puts mypass == "some"
puts mypass == "my special pass"

secpass = BCrypt::Password.new('$2a$12$wscRs5cB.09QVllkocltR.0.I3Th6TJ0Ve70.FClFCQc5xSZNQo.u')
puts secpass == mypass