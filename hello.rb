#!/usr/bin/env ruby
# frozen_string_literal: true

class MegaGreeter
  attr_accessor :names

  # create the object
  def initialize(names = 'World')
    @names = names
  end

  # say hi to everybody
  def say_hi
    if @names.nil?
      puts ' ... '
    elsif @names.respond_to?('each')
      # iterate through the list of names (@names) if it's a list (responds to each)
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say bye to everybody
  def say_bye
    if @names.nil?
      puts ' ... '
    elsif @names.respond_to?('join')
      # join the list elements with commas
      puts "Goodbye #{@names.join(', ')}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
      end
  end
end

if $0 == __FILE__
  #  no name input
  puts 'no name input:  '
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # one name input
  puts 'one name input:  '
  mg.names = 'Zeke'
  mg.say_hi
  mg.say_bye

  # list of names as input
  puts 'list of names as input:  '
  mg.names = ['Albert', 'Brenda', 'Charles', 'Dave', 'Engelbert']
  mg.say_hi
  mg.say_bye

  # make name input nil
  puts 'make name input nil:  '
  mg.names = nil
  mg.say_hi
  mg.say_bye
end