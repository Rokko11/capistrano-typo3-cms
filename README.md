# Capistrano::Typo3::Cms
___

This is an extension for the deployment tool Capistrano. This extension facilitates the deploy of TYPO3 CMS projects.

It includeds follows additional packages:

1. capistrano
- capistrano-ext
- railsless-deploy
- capistrano_colors

___

[![Build Status](https://travis-ci.org/programmerqeu/capistrano-typo3-cms.png?branch=master)](https://travis-ci.org/programmerqeu/capistrano-typo3-cms)
[![Gem Version](https://badge.fury.io/rb/capistrano-typo3-cms.png)](http://badge.fury.io/rb/capistrano-typo3-cms)
[![Dependency Status](https://gemnasium.com/programmerqeu/capistrano-typo3-cms.png)](https://gemnasium.com/programmerqeu/capistrano-typo3-cms)
[![Code Climate](https://codeclimate.com/github/programmerqeu/capistrano-typo3-cms.png)](https://codeclimate.com/github/programmerqeu/capistrano-typo3-cms)
[![Coverage Status](https://coveralls.io/repos/programmerqeu/capistrano-typo3-cms/badge.png?branch=master)](https://coveralls.io/r/programmerqeu/capistrano-typo3-cms)
[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/857fba632a5e514065b83540dc2d72b4 "githalytics.com")](http://githalytics.com/programmerqeu/capistrano-typo3-cms)


## Installation

Install it yourself wit rubygems package manager:
```bash
gem install capistrano-typo3-cms
```    

Need help to install? http://docs.rubygems.org/read/chapter/3
Or easer with RVM: https://rvm.io/   

## Usage

### Configuration

**Capify** your project
```bash
cd /path/to/your/project
capify ./
```
Edit your **./Capfile** to include _capistrano-typo3-cms_

```ruby
load 'deploy' if respond_to?(:namespace)

require 'capistrano'
require 'rubygems'
require 'railsless-deploy'
require 'capistrano-typo3-cms'

load 'lib/capistrano/mysql'
load 'config/deploy' # remove this line to skip loading any of the default 
```
In case of using multistage create config files for every enviroment (deploy/staging.rb):
- http://capifony.org/cookbook/using-the-multistage-extension.html
- https://github.com/capistrano/capistrano/wiki/2.x-Multistage-Extension

### Deploy
	cap <enviroment> deploy:setup
	cap <enviroment> deploy


## Projekt timeline
### Version 0.0.1

- Documentation "Deploying with Capistrano and TYPO3 CMS"
- Resolving dependencies for PHP projects

### Version 1.0.0

- Additional TYPO3:CMS tasks
	typo3:cms:setup
	typo3:cms:cc	
	typo3:cms:check
	typo3:cms:data:push
	typo3:cms:data:pull
	typo3:cms:data:backup


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request