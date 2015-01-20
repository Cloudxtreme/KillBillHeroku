# -*- encoding: utf-8 -*-
# stub: killbill 3.1.12 ruby lib

Gem::Specification.new do |s|
  s.name = "killbill"
  s.version = "3.1.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kill Bill core team"]
  s.date = "2014-10-23"
  s.description = "Base classes to write plugins."
  s.email = "killbilling-users@googlegroups.com"
  s.homepage = "http://kill-bill.org"
  s.licenses = ["Apache License (2.0)"]
  s.rdoc_options = ["--exclude", "."]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.requirements = ["jar 'org.kill-bill.billing:killbill-api'", "jar 'org.kill-bill.billing:killbill-util:tests'"]
  s.rubygems_version = "2.2.2"
  s.summary = "Framework to write Kill Bill plugins in Ruby."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.3.4"])
      s.add_runtime_dependency(%q<typhoeus>, ["~> 0.6.9"])
      s.add_runtime_dependency(%q<tzinfo>, ["~> 1.1.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 4.1.0"])
      s.add_development_dependency(%q<activerecord-jdbcmysql-adapter>, ["~> 1.3.7"])
      s.add_development_dependency(%q<activerecord-jdbcsqlite3-adapter>, ["~> 1.3.7"])
      s.add_development_dependency(%q<actionpack>, ["~> 4.1.0"])
      s.add_development_dependency(%q<actionview>, ["~> 4.1.0"])
      s.add_development_dependency(%q<activemerchant>, ["~> 1.44.1"])
      s.add_development_dependency(%q<offsite_payments>, ["~> 2.0.1"])
      s.add_development_dependency(%q<monetize>, ["~> 0.3.0"])
      s.add_development_dependency(%q<money>, ["~> 6.1.1"])
      s.add_development_dependency(%q<jbundler>, ["~> 0.4.3"])
      s.add_development_dependency(%q<rack>, [">= 1.5.2"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<thor>, ["~> 0.19.1"])
    else
      s.add_dependency(%q<sinatra>, ["~> 1.3.4"])
      s.add_dependency(%q<typhoeus>, ["~> 0.6.9"])
      s.add_dependency(%q<tzinfo>, ["~> 1.1.0"])
      s.add_dependency(%q<activerecord>, ["~> 4.1.0"])
      s.add_dependency(%q<activerecord-jdbcmysql-adapter>, ["~> 1.3.7"])
      s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, ["~> 1.3.7"])
      s.add_dependency(%q<actionpack>, ["~> 4.1.0"])
      s.add_dependency(%q<actionview>, ["~> 4.1.0"])
      s.add_dependency(%q<activemerchant>, ["~> 1.44.1"])
      s.add_dependency(%q<offsite_payments>, ["~> 2.0.1"])
      s.add_dependency(%q<monetize>, ["~> 0.3.0"])
      s.add_dependency(%q<money>, ["~> 6.1.1"])
      s.add_dependency(%q<jbundler>, ["~> 0.4.3"])
      s.add_dependency(%q<rack>, [">= 1.5.2"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<thor>, ["~> 0.19.1"])
    end
  else
    s.add_dependency(%q<sinatra>, ["~> 1.3.4"])
    s.add_dependency(%q<typhoeus>, ["~> 0.6.9"])
    s.add_dependency(%q<tzinfo>, ["~> 1.1.0"])
    s.add_dependency(%q<activerecord>, ["~> 4.1.0"])
    s.add_dependency(%q<activerecord-jdbcmysql-adapter>, ["~> 1.3.7"])
    s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, ["~> 1.3.7"])
    s.add_dependency(%q<actionpack>, ["~> 4.1.0"])
    s.add_dependency(%q<actionview>, ["~> 4.1.0"])
    s.add_dependency(%q<activemerchant>, ["~> 1.44.1"])
    s.add_dependency(%q<offsite_payments>, ["~> 2.0.1"])
    s.add_dependency(%q<monetize>, ["~> 0.3.0"])
    s.add_dependency(%q<money>, ["~> 6.1.1"])
    s.add_dependency(%q<jbundler>, ["~> 0.4.3"])
    s.add_dependency(%q<rack>, [">= 1.5.2"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<thor>, ["~> 0.19.1"])
  end
end
