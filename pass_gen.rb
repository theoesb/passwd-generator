#!/bin/ruby
def generator (length, difficulty)
    basic_passwd = ("a".."z").to_a + ("A".."Z").to_a
    medium_passwd = ("0".."9").to_a + basic_passwd
    strong_passwd = medium_passwd + %w(! @ # $ % ^ & *)

    case difficulty
    when :basic
        chars = basic_passwd
    when :medium
        chars = medium_passwd
    when :strong
        chars = strong_passwd
    else
        raise ArgumentError, "Invalid difficulty"
    end

    passwd = Array.new(length) { chars.sample }.join
end

print "Enter the number of passwords to generate: "
num = gets.chomp.to_i

print "Enter the length of the passwords: "
length = gets.chomp.to_i

print "Enter the difficulty of the passwords (basic, medium, strong): "
difficulty = gets.chomp.to_sym
puts "\n"
puts "List of passwords:"

num.times do
  puts generator(length, difficulty)
end