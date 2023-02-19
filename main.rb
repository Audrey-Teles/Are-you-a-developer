require "tty-prompt"

prompt = TTY::Prompt.new

options = prompt.multi_select("Select all the programming languages you know:", %w(JavaScript Python Java PHP Ruby))

if options.length == 5
  puts "You are crazy :o"
elsif options.length == 1 and options.include?"Ruby"
  puts "Ow good, this program was developed with Ruby '-'"
elsif options.length == 0
  puts "Later, chose one to start :)"
else
  puts "You are a developer! ;)"
end

