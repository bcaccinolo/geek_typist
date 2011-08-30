#gem install highline

require "rubygems"
require 'optparse'
require "highline/system_extensions"
include HighLine::SystemExtensions

options = {}
OptionParser.new do |opts|
opts.banner = "Usage: geek_typist [options]"

opts.on("-v", "--version", "Version") do |v|
  options[:version] = 1
end

opts.on("-t text", "--text text", "launch the system with the given text ") do |v|
  options[:use_text] = v 
end

opts.on("-n NUM", "--n-times NUM", "repeat the text NUM times") do |v|
  options[:repeat] = v 
end

end.parse!

if options[:use_text]
  str_test = options[:use_text]
else
  str_test = "{13-_87}"
end

if options[:repeat]
  n_times = options[:repeat].to_i
else
  n_times = 1
end

failures = 0
(str_test * n_times).split("").sort_by{ rand }.each do |s| 

  c = 0
  while (c != s[0]) do 
    puts s 
    c = get_character 
    puts c.chr
    if (c != s[0]) 
    puts "not good yet" 
    failures += 1
    end
  end

end

puts "#{failures} failures"



