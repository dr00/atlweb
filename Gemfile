source 'http://rubygems.org'

gem 'rails', '3.0.9'
gem 'bcrypt-ruby', :require => 'bcrypt'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

platforms :ruby do
  gem 'sqlite3'
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

platforms :jruby do

  gem 'activerecord-jdbc-adapter'

  # As rails --database switch does not support derby, hsqldb, h2 nor mssql
  # as valid values, if you are not using SQLite, comment out the SQLite gem
  # below and uncomment the gem declaration for the adapter you are using.
  # If you are using oracle, db2, sybase, informix or prefer to use the plain
  # JDBC adapter, comment out all the adapter gems below.

  # SQLite JDBC adapter
  # gem 'jdbc-sqlite3', :require => false
  #if defined?(JRUBY_VERSION)
    gem 'jdbc-sqlite3'
    gem 'activerecord-jdbc-adapter'
    gem 'activerecord-jdbcsqlite3-adapter'
    gem 'jruby-openssl'
    gem 'jruby-rack'
    gem 'warbler'
  #else
  #end

  # Derby JDBC adapter
  #gem 'activerecord-jdbcderby-adapter'

  # HSQL JDBC adapter
  #gem 'activerecord-jdbchsqldb-adapter'

  # H2 JDBC adapter
  #gem 'activerecord-jdbch2-adapter'

  # SQL Server JDBC adapter
  #gem 'activerecord-jdbcmssql-adapter'

end

group :development do
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', '2.4.0'
end

group :test do
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'
  gem 'spork', '0.9.0.rc8'
  gem 'factory_girl_rails', '1.0'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
