Gem::Specification.new do |s|
  s.name = 'i_heart_quotes'
  s.version = '0.2.1'
  s.date = '2012-03-14'
  s.summary = 'I <3 Quotes Client'
  s.authors = ['Roberto Decurnex']
  s.email = 'decurnex.roberto@gmail.com'
  s.homepage = 'http://github.com/robertodecurnex/i_heart_quotes'

  s.platform = Gem::Platform::RUBY

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.add_runtime_dependency 'httparty'
end

