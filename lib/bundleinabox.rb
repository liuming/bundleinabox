# stdlib
require 'fileutils'
# dependencies
require 'bundler'
require 'bundler/cli'
require 'bundler/friendly_errors'
require 'geminabox'
require 'geminabox_client'
require 'rubygems/commands/inabox_command'
# bundleinabox
require "bundleinabox/version"

module Bundleinabox
  def self.sync
    # run bundler package
    Bundler.with_friendly_errors { Bundler::CLI.start(['package']) }
    # upload gems to geminabox
    Gem::Commands::InaboxCommand.new.send_gems(Dir.foreach('vendor/cache').reject{|f| !f.match(/\.gem$/)}.map{|f| "vendor/cache/#{f}"})
  end

  def self.host(host)
    Gem::Commands::InaboxCommand.new.geminabox_host = host
  end
end
