#gem install highline

require "rubygems"
require "highline/system_extensions"
include HighLine::SystemExtensions

str_test = "{13-_87}"

#debugger
failures = 0
str_test.split("").each do |s| 

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



