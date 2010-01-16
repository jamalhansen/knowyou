# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-openid}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Peek"]
  s.date = %q{2009-11-29}
  s.description = %q{    Rack::OpenID provides a more HTTPish API around the ruby-openid library.
}
  s.email = %q{josh@joshpeek.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["lib/rack/openid.rb", "README.rdoc", "LICENSE"]
  s.homepage = %q{http://github.com/josh/rack-openid}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Provides a more HTTPish API around the ruby-openid library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 0.4"])
      s.add_runtime_dependency(%q<ruby-openid>, [">= 2.1.6"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_development_dependency(%q<roman-rots>, [">= 0.2.1"])
    else
      s.add_dependency(%q<rack>, [">= 0.4"])
      s.add_dependency(%q<ruby-openid>, [">= 2.1.6"])
      s.add_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_dependency(%q<roman-rots>, [">= 0.2.1"])
    end
  else
    s.add_dependency(%q<rack>, [">= 0.4"])
    s.add_dependency(%q<ruby-openid>, [">= 2.1.6"])
    s.add_dependency(%q<mocha>, [">= 0.9.7"])
    s.add_dependency(%q<roman-rots>, [">= 0.2.1"])
  end
end
