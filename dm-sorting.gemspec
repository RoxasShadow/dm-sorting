Kernel.load 'lib/dm-sorting/version.rb'

Gem::Specification.new { |s|
  s.name          = 'dm-sorting'
  s.version       = DataMapper::Sorting::VERSION
  s.author        = 'Giovanni Capuano'
  s.email         = 'webmaster@giovannicapuano.net'
  s.homepage      = 'http://www.giovannicapuano.net'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Sorting method for DataMapper models'
  s.description   = 'DataMapper plugin providing your models a default sorting method'
  s.licenses      = 'WTFPL'

  s.require_paths = ['lib']
  s.files         = Dir.glob('lib/**/*.rb')
  s.test_files    = Dir.glob('test/**/*_spec.rb')

  s.add_dependency 'dm-core'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
}