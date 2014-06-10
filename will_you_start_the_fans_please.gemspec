# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'will_you_start_the_fans_please'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'Ryan Conway'
  s.email       = ''
  s.homepage    = 'http://github.com/rylon/will_you_start_the_fans_please'
  s.summary     = ''
  s.description = ''
  s.license     = 'MIT'

  s.rubyforge_project = 'will_you_start_the_fans_please'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('capistrano', '>= 2.0.0')
end
