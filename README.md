# Bundleinabox

Cache .gem files with bundler and push them up to a rubygems server with geminabox


## Installation

Add this line to your application's Gemfile:

    gem 'bundleinabox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bundleinabox

## Usage

First point geminabox to your own rubygems server. This is a one time setup.

    bundleinabox host YOUR_RUBYGEMS_SERVER

Then inside any project using Bundler (with Gemfile), you can push the gems to your rubygems server

    bundleinabox

## Note

Currently it only support .gem files and does not support git checkout repo.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
