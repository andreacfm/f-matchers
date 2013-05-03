# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "f-matchers/version"

Gem::Specification.new do |s|
  s.name        = "f-matchers"
  s.version     = FMatchers::VERSION
  s.authors     = ["Andrea Campolonghi"]
  s.email       = ["acampolonghi@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rspec matchers to be shared and reused}
  s.description = %q{Rspec matchers to be shared and reused}

  s.rubyforge_project = "f-matchers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "rspec"
  s.add_development_dependency "activerecord"
  s.add_development_dependency "sqlite3"
end
