# frozen_string_literal: true

puts "[Redshift Tasks] ActiveRecord version: #{ActiveRecord.version}"
if ActiveRecord.version >= Gem::Version.new('8.0.0')
  puts "[Redshift Tasks] Loading redshift_8_0_tasks"
  require_relative 'redshift_8_0_tasks'
elsif ActiveRecord.version >= Gem::Version.new('7.2.0')
  puts "[Redshift Tasks] Loading redshift_7_2_tasks"
  require_relative 'redshift_7_2_tasks'
elsif ActiveRecord.version >= Gem::Version.new('7.1.0')
  puts "[Redshift Tasks] Loading redshift_7_1_tasks"
  require_relative 'redshift_7_1_tasks'
elsif ActiveRecord.version >= Gem::Version.new('7.0.0')
  puts "[Redshift Tasks] Loading redshift_7_0_tasks"
  require_relative 'redshift_7_0_tasks'
else
  raise 'no compatible version of ActiveRecord detected'
end
