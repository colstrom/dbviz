Gem::Specification.new do |gem|
  gem.name        = 'dbviz'
  gem.version     = `git describe --tags --abbrev=0`.chomp
  gem.licenses    = 'MIT'
  gem.authors     = ['Chris Olstrom']
  gem.email       = 'chris@olstrom.com'
  gem.homepage    = 'https://github.com/colstrom/dbviz'
  gem.summary     = 'Visualizes Database Relations'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'contracts', '~> 0.14', '>= 0.14.0'
  gem.add_runtime_dependency 'facets', '~> 3.1', '>= 3.1.0'
  gem.add_runtime_dependency 'ruby-graphviz', '~> 1.2', '>= 1.2.2'
  gem.add_runtime_dependency 'sequel', '~> 4.36', '>= 4.36.0'
end
