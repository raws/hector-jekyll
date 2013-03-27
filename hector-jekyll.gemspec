spec = Gem::Specification.new do |s|
  s.name = 'hector-jekyll'
  s.version = '0.0.1'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Ross Paffett']
  s.email = ['ross@rosspaffett.com']
  s.homepage = 'https://github.com/raws/hector-jekyll'
  s.summary = 'Multiple identity adapters for Hector'
  s.description = 'A Hector extension which allows the use of multiple identity adapters'
  s.files = Dir['lib/**/*.rb']
  s.require_path = 'lib'

  s.add_dependency 'hector', '>= 1.0.8'
end
