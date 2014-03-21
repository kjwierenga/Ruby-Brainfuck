#!/usr/bin/env ruby
# Brainfuck Interpreter
# (C) Sebastian Kaspari 2009
# Usage: bf.rb [FILE]
 
# This code is much much faster than the last one, which did
# a lot of unnecessary loops which could also lead to bugs
#
# There's now a bracket map which stores starting and ending
# brackets for direct "jumps", that should speed up things too
 
require 'rubygems'
require "highline/system_extensions"
include HighLine::SystemExtensions
require './bflib.rb'

code = ARGF.read
 
msec = Time.now.to_f * 1000;

cell_count = Brainfuck.evaluate code
 
# and finally some benchmarking
 
runtime = Time.now.to_f * 1000 - msec
 
puts ""
puts ""
puts "#{runtime} msecs [Used #{cell_count} cells]"
