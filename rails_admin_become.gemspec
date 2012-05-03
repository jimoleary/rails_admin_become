$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_become/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_become"
  s.version     = RailsAdminBecome::VERSION
  s.authors     = ["Jim OLeary"]
  s.email       = ["jim.oleary@gmail.com"]
  s.homepage    = "www.mylocalsocial.com"
  s.summary     = "Become another user from Rails Admin user lists."
  s.description = "Simple login as functionality for localsocial."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end
