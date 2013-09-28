# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'selective_features/version'

Gem::Specification.new do |s|
  s.name        = "selective_features"
  s.version     = Features::VERSION
  s.summary     = %Q{Features is a user oriented tool that allows enabling and disabling parts of an application at the routes level.}
  s.description = %Q{A rails gem that allows disabling and enable parts of an application at the routes level}
  s.files       = Dir["{app,lib}/**/*"] + ["MIT-LICENSE", "README.md"]
  s.authors     = %Q{Runtime Revolution}
  s.require_paths = %w(lib)

  s.add_dependency("rails")
  s.add_development_dependency("rake")
end
