$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'start/version'

spec = Gem::Specification.new do |s|
  s.name = 'payfort_start'
  s.version = Start::VERSION
  s.summary = 'Ruby bindings for the Payfort Start API'
  s.description = 'Payfort Start is the easiest way to accept payments online in the middle east. See https://start.payfort.com for details.'
  s.authors = ['Pavel Gabriel','Yazin Alirhayim']
  s.email = ['pavel@payfort.com','yazin@payfort.com']
  s.homepage = 'https://start.payfort.com/docs/'
  s.license = 'MIT'

  s.add_dependency('httparty', '~> 0.13')
  s.add_dependency('json', '~> 1.8')

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end
