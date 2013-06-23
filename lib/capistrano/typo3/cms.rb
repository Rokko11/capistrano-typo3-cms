require "capistrano/typo3/cms/version"



Capistrano::Configuration.instance(:must_exist).load do

  require 'capistrano/recipes/deploy/scm'
  require 'capistrano/recipes/deploy/strategy'
	require 'railsless-deploy'
	require 'capistrano_colors'
	capistrano_color_matchers = [
		{ :match => /command finished/,       :color => :hide,      :prio => 10 },
		{ :match => /executing command/,      :color => :blue,      :prio => 10, :attribute => :underscore },
		{ :match => /^transaction: commit$/,  :color => :magenta,   :prio => 10, :attribute => :blink },
		{ :match => /git/,                    :color => :white,     :prio => 20, :attribute => :reverse },
	]
	colorize( capistrano_color_matchers )

  # =========================================================================
  # These variables may be set in the client capfile if their default values
  # are not sufficient.
  # =========================================================================

  set :scm, :git
  set :deploy_via, :remote_cache
  _cset :branch, "master"
  set :git_enable_submodules, true

  set(:deploy_to) { "/var/www/#{application}" }

  namespace :typo3 do

	end
end