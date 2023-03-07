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