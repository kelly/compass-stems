# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass-stems/version"

Gem::Specification.new do |s|
  s.name        = "compass-stems"
  s.version     = Compass::Stems::VERSION
  s.authors     = ["kkorevec"]
  s.email       = ["korevec@gmail.com"]
  s.homepage    = "http://www.dailymile.com"
  s.summary     = %q{generate image stems for compass}
  s.description = %q{generate image stems for compass}

  s.rubyforge_project = "compass-stems"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
