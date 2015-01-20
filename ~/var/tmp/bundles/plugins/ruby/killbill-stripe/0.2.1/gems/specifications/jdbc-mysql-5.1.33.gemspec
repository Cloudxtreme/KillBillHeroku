# -*- encoding: utf-8 -*-
# stub: jdbc-mysql 5.1.33 ruby lib

Gem::Specification.new do |s|
  s.name = "jdbc-mysql"
  s.version = "5.1.33"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Sieger, Ola Bini, Karol Bucek and JRuby contributors"]
  s.date = "2014-10-20"
  s.description = "Install this gem `require 'jdbc/mysql'` and invoke `Jdbc::MySQL.load_driver` within JRuby to load the driver."
  s.email = ["nick@nicksieger.com", "ola.bini@gmail.com", "self@kares.org"]
  s.homepage = "http://github.com/jruby/activerecord-jdbc-adapter/tree/master/jdbc-mysql"
  s.licenses = ["GPL-2"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.2.2"
  s.summary = "JDBC driver for JRuby and MySQL (used by ActiveRecord-JDBC)."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version
end
