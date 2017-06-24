# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'will_you_start_the_fans_please'
  s.version     = '1.0.0'
  s.summary     = 'An extension for Capistrano 2 to add a bit of 90s-era excitement to your deployment -- to the Crystal Dome!'
  s.description = 'An extension for Capistrano 2 to add a bit of 90s-era excitement to your deployment -- to the Crystal Dome!'
  s.platform    = Gem::Platform::CURRENT
  s.authors     = 'Ryan Conway'
  s.email       = ''
  s.homepage    = 'http://github.com/Rylon/will_you_start_the_fans_please'

  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('capistrano', '>= 2.0.0')
end
