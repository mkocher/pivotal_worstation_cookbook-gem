Pivotal Workstation Cookbook - The Gem
======================================

# Why?
As ruby developers we know how to manage gems.  We may have hated bundler in 2010, but it's been great in 2011.  Gems are easy to share, easy to fork, easy to publish and easy to version.

# How?
I wrote [Soloist](https://github.com/mkocher/soloist) to easily run chef solo - tell it in the yaml file you've got a cookbook gem:

	cookbook_gems:
	- pivotal_workstation_cookbook

and it requires 'pivotal_workstation_cookbook' and adds PivotalWorkstationCookbook::COOKBOOK_PATH to the cookbooks path.

pivotal_workstation_cookbook has a lib/pivotal_workstation_cookbook.rb file which looks like

	module PivotalWorkstationCookbook
	  VERSION = "0.0.1"
	  COOKBOOK_PATH = File.expand_path(File.join(File.dirname(__FILE__), "..", "cookbooks"))
	end

which points to the cookbooks directory in the root of the gem.

That's it. It's not magic, and it's not too ugly.  If you're using chef-solo by itself, this boils down to:

	require 'pivotal_workstation_cookbook'
	cookbook_path [PivotalWorkstationCookbook::COOKBOOK_PATH, '/other/cookbook/path']