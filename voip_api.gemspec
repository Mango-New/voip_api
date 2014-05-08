$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "voip_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "voip_api"
  s.version     = VoipApi::VERSION
  s.authors     = ["Mark D Holmberg"]
  s.email       = ["mark.d.holmberg@gmail.com"]
  s.homepage    = "http://www.markholmberg.com"
  s.summary     = "VOIP API is a Ruby gem for communicating with the VOIP Innovations API."
  s.description     = "VOIP API is a Ruby gem for communicating with the VOIP Innovations API."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails", "4.0.2"
end
