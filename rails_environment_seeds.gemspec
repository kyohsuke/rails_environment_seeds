lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_environment_seeds/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.5'

  spec.name          = 'rails_environment_seeds'
  spec.version       = RailsEnvironmentSeeds::VERSION
  spec.authors       = ['Keisuke Kawahara']
  spec.email         = ['kyohsuke@users.noreply.github.com']

  spec.summary       = 'Use the split seeds per environments'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kyohsuke/rails_environment_seeds'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kyohsuke/rails_environment_seeds'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rails', '>= 5'

  spec.add_development_dependency 'bundler', '>= 2.1.0'
  spec.add_development_dependency 'minitest', '~> 5.14'
  spec.add_development_dependency 'rake', '~> 13.0'
end
