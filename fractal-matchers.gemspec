# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fractal-matchers/version"

Gem::Specification.new do |s|
  s.name        = "fractal-matchers"
  s.version     = Fractal::Matchers::VERSION
  s.authors     = ["Andrea Campolonghi"]
  s.email       = ["acampolonghi@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Rspec matchers from fractalgarden.com}
  s.description = %q{Rspec matchers used in fractalgarden.com}

  s.rubyforge_project = "fractal-matchers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency "rspec"
  s.add_dependency "shoulda-matchers"
  s.add_development_dependency "activerecord"
end
