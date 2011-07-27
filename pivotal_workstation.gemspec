# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pivotal_workstation_cookbook"

Gem::Specification.new do |s|
  s.name        = "pivotal_workstation_cookbook"
  s.version     = PivotalWorkstationCookbook::VERSION
  s.authors     = ["Matthew Kocher"]
  s.email       = ["kocher@gmail.com"]
  s.homepage    = "https://github.com/mkocher/pivotal_worstation_cookbook-gem"
  s.summary     = %q{The pivotal_workstation OSX Chef cookbook}
  s.description = %q{Packaged as a gem for use with soloist.}

  s.files         = `git ls-files`.split("\n")
  s.files         += `cd cookbooks/pivotal_workstation/ && git ls-files`.split("\n").map {|file_name| "cookbooks/pivotal_workstation/"+file_name}
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end