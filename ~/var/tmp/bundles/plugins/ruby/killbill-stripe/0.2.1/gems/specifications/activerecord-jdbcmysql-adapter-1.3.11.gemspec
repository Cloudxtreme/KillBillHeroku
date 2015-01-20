# -*- encoding: utf-8 -*-
# stub: activerecord-jdbcmysql-adapter 1.3.11 ruby lib

Gem::Specification.new do |s|
  s.name = "activerecord-jdbcmysql-adapter"
  s.version = "1.3.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Sieger, Ola Bini, Karol Bucek and JRuby contributors"]
  s.date = "2014-10-20"
  s.email = ["nick@nicksieger.com", "ola.bini@gmail.com", "self@kares.org"]
  s.homepage = "https://github.com/jruby/activerecord-jdbc-adapter"
  s.licenses = ["BSD"]
  s.rubyforge_project = "jruby-extras"
  s.rubygems_version = "2.2.2"
  s.summary = "MySQL JDBC adapter for JRuby on Rails."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord-jdbc-adapter>, ["~> 1.3.11"])
      s.add_runtime_dependency(%q<jdbc-mysql>, [">= 5.1.22"])
    else
      s.add_dependency(%q<activerecord-jdbc-adapter>, ["~> 1.3.11"])
      s.add_dependency(%q<jdbc-mysql>, [">= 5.1.22"])
    end
  else
    s.add_dependency(%q<activerecord-jdbc-adapter>, ["~> 1.3.11"])
    s.add_dependency(%q<jdbc-mysql>, [">= 5.1.22"])
  end
end
