Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'activerecord8-redshift-adapter'
  s.version = '2.0.0'
  s.summary = 'Amazon Redshift adapter for ActiveRecord'
  s.description = 'Amazon Redshift adapter for ActiveRecord 7.x and 8.x.'
  s.license = 'MIT'

  s.author = ['Nancy Foen', 'Minero Aoki', 'iamdbc', 'Quentin Rousseau', 'Johan Le Bray', 'Owen Stephens', 'MrNagoo']
  s.email = 'dev@example.com'
  s.homepage = 'https://github.com/MrNagoo/activerecord-adapter-redshift'

  s.files = Dir.glob(['LICENSE', 'README.md', 'lib/**/*.rb'])
  s.require_path = 'lib'

  s.required_ruby_version = '>= 3.0'
  s.add_runtime_dependency 'activerecord', '>= 7.0', '< 9.0'
  s.add_runtime_dependency 'pg', '~> 1.0'
end
