#! /usr/bin/env ruby

$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), '/lib'))
require 'dropset'

num = ARGV[0].to_i || 1

puts "#{Dropset.calc(num)}"
  