Gem::Specification.new do |s|
  s.name        = "compass-stems"
  s.version     = "0.0.1"
  s.authors     = ["kelly korevec"]
  s.email       = ["kelly@dailymile.com"]
  s.homepage    = "http://www.dailymile.com"
  s.summary     = %q{generate image stems for compass}
  s.description = %q{generate image stems for compass}

  s.rubyforge_project = "compass-stems"

  s.files       = %w(README.mkdn)
  s.files       += Dir.glob("lib/**/*.*)
  s.files       += Dir.glob("templates/**/*.*)

  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11.beta.5"])
  s.add_dependency("chunky_png", [">= 1.1.0"])
end
